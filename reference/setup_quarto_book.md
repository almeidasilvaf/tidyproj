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
#> /tmp/RtmpeIBVRy/45_tidyproj_ex
#> /tmp/RtmpeIBVRy/_quarto.yml
#> /tmp/RtmpeIBVRy/bibliography.bib
#> /tmp/RtmpeIBVRy/bslib-ab09c8dd849f1780583fea51d923566e
#> /tmp/RtmpeIBVRy/chapters
#> /tmp/RtmpeIBVRy/downlit
#> /tmp/RtmpeIBVRy/file1cdb1feb29d6
#> /tmp/RtmpeIBVRy/file1cdb3098d102
#> /tmp/RtmpeIBVRy/file1cdb3251e166
#> /tmp/RtmpeIBVRy/file1cdb3973551
#> /tmp/RtmpeIBVRy/file1cdb43792dbc
#> /tmp/RtmpeIBVRy/file1cdb5460ccf0
#> /tmp/RtmpeIBVRy/file1cdb7cb9a10b.qmd
#> /tmp/RtmpeIBVRy/index.qmd
```
