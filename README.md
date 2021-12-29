
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
