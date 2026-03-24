# Add a new .qmd file representing a Quarto book chapter

Add a new .qmd file representing a Quarto book chapter

## Usage

``` r
add_chapter(filename = here("chapters", "chapter_0X.qmd"))
```

## Arguments

- filename:

  Character indicating the path to the .qmd file to be created.

## Value

Character with path to .qmd files.

## Examples

``` r
path <- tempdir()
c <- add_chapter(filename = tempfile(fileext = ".qmd"))
```
