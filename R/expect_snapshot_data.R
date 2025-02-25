#' Snapshot a data frame
#'
#' @param x a [data.frame]
#' @param name a [character] name of the snapshot
#' @param digits a [numeric] number of digits to round to
#'
#' @returns NULL
#' @export
#'
#' @examples
#' \dontrun{
#' iris |> expect_snapshot_data(name = "iris")
#' }
expect_snapshot_data <- function(x, name, digits = 6) {
  fun <- function(x) signif(x, digits = digits)
  lapply_fun <- function(x) I(lapply(x, fun))
  x <- dplyr::mutate(x, dplyr::across(where(is.numeric), fun))
  x <- dplyr::mutate(x, dplyr::across(where(is.list), lapply_fun))
  path <- save_csv(x)
  testthat::expect_snapshot_file(
    path,
    paste0(name, ".csv"),
    compare = testthat::expect_snapshot_file
  )
}

save_csv <- function (x)
{
  path <- tempfile(fileext = ".csv")
  readr::write_csv(x, path)
  path
}
