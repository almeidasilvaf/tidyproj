
#----Start tests----------------------------------------------------------------
test_that("create_project_tree() creates a directory structure", {
    
    rootdir <- file.path(tempdir(), paste0("tidyproj_ex", sample(1:50, 1)))
    c <- create_project_tree(rootdir)
    file <- create_rmd(rootdir, paste0(sample(1:500, 1), "_new_analysis.Rmd"))
    
    expect_true("character" %in% class(c))
    expect_equal(class(file), "character")
})
