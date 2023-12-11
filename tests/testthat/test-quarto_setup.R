

# Start tests ----

test_that("add_chapter() adds a new chapter (.qmd file)", {
    
    c <- add_chapter(tempfile(fileext = ".qmd"))
    
    expect_true(endsWith(c, ".qmd"))
})

test_that("setup_quarto_book() creates the required files and folders", {
    
    rd <- file.path(tempdir(), paste0("dir", sample(1:1000, 1)))
    if(!dir.exists(rd)) { dir.create(rd, recursive = TRUE) }
    
    s <- setup_quarto_book(rootdir = rd)
    
    expect_true("character" %in% class(s))
})
