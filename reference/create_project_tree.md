# Create project tree

This function creates a standard directory structure for scientific
projects.

## Usage

``` r
create_project_tree(rootdir = here::here(), quarto_book = TRUE)
```

## Arguments

- rootdir:

  Path to root directory where the structure will be created. Default:
  [`here::here()`](https://here.r-lib.org/reference/here.html).

- quarto_book:

  Logical indicating whether to set up a Quarto book. Default: TRUE.

## Value

A character vector with paths to the directory structure.

## Examples

``` r
rootdir <- file.path(tempdir(), paste0(sample(1:100, 1), "_tidyproj_ex"))
c <- create_project_tree(rootdir)
#> /tmp/RtmpAMEfhd/45_tidyproj_ex
#> ├── README.md
#> ├── _quarto.yml
#> ├── bibliography.bib
#> ├── chapters
#> │   ├── appendices.qmd
#> │   ├── chapter_01.qmd
#> │   └── chapter_02.qmd
#> ├── code
#> ├── data
#> ├── index.qmd
#> └── products
#>     ├── figs
#>     ├── plots
#>     ├── result_files
#>     └── tables
```
