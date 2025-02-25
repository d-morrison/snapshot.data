
# snapshot.data

<!-- badges: start -->
[![R-CMD-check](https://github.com/d-morrison/snapshot.data/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/d-morrison/snapshot.data/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of snapshot.data is to export the `expect_snapshot_data()` function from `https://github.com/bcgov/ssdtools`, 
to test functions in other projects, without having to import the entire `ssdtools` package.

See <https://github.com/bcgov/ssdtools/issues/379#issuecomment-2372581429>.


## Installation

You can install the development version of snapshot.data from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("d-morrison/snapshot.data")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(snapshot.data)
## basic example code
```

