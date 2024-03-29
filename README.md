
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyproj <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/almeidasilvaf/tidyproj/workflows/R-CMD-check/badge.svg)](https://github.com/almeidasilvaf/tidyproj/actions)
[![Codecov test
coverage](https://codecov.io/gh/almeidasilvaf/tidyproj/branch/master/graph/badge.svg)](https://app.codecov.io/gh/almeidasilvaf/tidyproj?branch=master)
<!-- badges: end -->

The goal of `tidyproj` is to create a standard directory structure for
scientific projects, including a code, data, and products directory.
This way, all projects will look the same, making it easier to load and
save data in different projects.

You can see an example directory created with `tidyproj` in
inst/extdata. The directory structure looks like this:

``` r
exampledir <- system.file("extdata", "exampledir", package = "tidyproj")
fs::dir_tree(exampledir)
#> /tmp/Rtmp6OxAsJ/temp_libpath9cfde46e58d41/tidyproj/extdata/exampledir
#> ├── README.md
#> ├── code
#> │   ├── 01_first_analysis.Rmd
#> │   ├── 02_second_analysis.Rmd
#> │   ├── 03_third_analysis.Rmd
#> │   └── 04_fourth_analysis.Rmd
#> ├── data
#> │   └── DATA_DESCRIPTION.Rmd
#> └── products
#>     ├── figs
#>     ├── plots
#>     ├── result_files
#>     └── tables
```

## Installation

Get the latest stable R release from CRAN. Then, install **tidyproj**
from GitHub using the following code:

``` r
if(!requireNamespace('remotes', quietly = TRUE))
  install.packages('remotes')
remotes::install_github("almeidasilvaf/tidyproj")
```
