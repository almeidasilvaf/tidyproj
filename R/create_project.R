
#' Create project tree
#' 
#' This function creates a standard directory structure for scientific projects.
#' 
#' @param rootdir Path to root directory where the structure will be created.
#' Default: \code{here::here()}.
#' @param quarto_book Logical indicating whether to set up a Quarto book.
#' Default: TRUE.
#' 
#' @return A character vector with paths to the directory structure.
#' 
#' @rdname create_project_tree
#' @importFrom fs dir_create dir_tree
#' @importFrom here here
#' @export
#' @examples 
#' rootdir <- file.path(tempdir(), paste0(sample(1:100, 1), "_tidyproj_ex"))
#' c <- create_project_tree(rootdir)
create_project_tree <- function(rootdir = here::here(), quarto_book = TRUE) {

    fs::dir_create(rootdir)
    
    # README.md
    content <- c("## Overview", "", "")
    writeLines(content, con = file.path(rootdir, "README.md"))
    
    # Directories
    dirs <- c(
        # code/ directory
        file.path(rootdir, "code"),
        # data/ directory
        file.path(rootdir, "data"),
        # products/ directory
        file.path(rootdir, "products"),
        file.path(rootdir, "products", "result_files"),
        file.path(rootdir, "products", "plots"),
        file.path(rootdir, "products", "figs"),
        file.path(rootdir, "products", "tables")
    )
    
    # Create directories
    create_dirs <- lapply(dirs, fs::dir_create)
    
    # Set up Quarto book
    if(quarto_book) { s <- setup_quarto_book(rootdir) }
    
    return(fs::dir_tree(rootdir))
}

