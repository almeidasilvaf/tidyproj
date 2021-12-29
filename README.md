
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyproj

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/almeidasilvaf/tidyproj/workflows/R-CMD-check/badge.svg)](https://github.com/almeidasilvaf/tidyproj/actions)
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
#> /private/var/folders/ls/n6w3s9bx79lcr2pcd1hm77780000gn/T/RtmpMrkuM1/temp_libpath4762502358/tidyproj/extdata/exampledir
#> ├── README.md
#> ├── code
#> │   ├── 01_first_analysis.Rmd
#> │   ├── 02_second_analysis.Rmd
#> │   ├── 03_third_analysis.Rmd
#> │   └── 04_fourth_analysis.Rmd
#> ├── data
#> │   └── DATA_DESCRIPTION.md
#> ├── products
#> │   ├── figs
#> │   ├── plots
#> │   ├── result_files
#> │   └── tables
#> ├── renv
#> │   ├── activate.R
#> │   └── settings.dcf
#> ├── renv.lock
#> └── test.Rproj
```

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("almeidasilvaf/tidyproj")
```

## Usage

Users can create the project structure with a single function:

``` r
library(tidyproj)
create_project_tree()
```
