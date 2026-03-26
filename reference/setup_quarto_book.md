# Set up directory for a Quarto book

Set up directory for a Quarto book

## Usage

``` r
setup_quarto_book(rootdir = here())
```

## Arguments

- rootdir:

  Character with path to the root directory

## Value

A character vector with paths to the directory structure.

## Examples

``` r
rootdir <- tempdir()

setup_quarto_book(rootdir)
#> /tmp/RtmpAMEfhd/45_tidyproj_ex
#> /tmp/RtmpAMEfhd/_quarto.yml
#> /tmp/RtmpAMEfhd/bibliography.bib
#> /tmp/RtmpAMEfhd/bslib-ab09c8dd849f1780583fea51d923566e
#> /tmp/RtmpAMEfhd/chapters
#> /tmp/RtmpAMEfhd/downlit
#> /tmp/RtmpAMEfhd/file1cdc1231b5f4
#> /tmp/RtmpAMEfhd/file1cdc12a9b58f.qmd
#> /tmp/RtmpAMEfhd/file1cdc146d4f2a
#> /tmp/RtmpAMEfhd/file1cdc5b92a82
#> /tmp/RtmpAMEfhd/file1cdc69ef8a51
#> /tmp/RtmpAMEfhd/file1cdc754f877e
#> /tmp/RtmpAMEfhd/file1cdcd811272
#> /tmp/RtmpAMEfhd/index.qmd
```
