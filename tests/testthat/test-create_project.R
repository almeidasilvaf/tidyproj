
#----Start tests----------------------------------------------------------------
test_that("create_project_tree() creates a directory structure", {
    
    rootdir <- file.path(tempdir(), paste0("tidyproj_ex", sample(1:50, 1)))
    c <- create_project_tree(rootdir)
    
    expect_true("character" %in% class(c))
})
