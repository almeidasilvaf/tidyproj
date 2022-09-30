
#' Create project tree
#' 
#' This function creates a standard directory structure for scientific projects.
#' 
#' @param rootdir Path to root directory where the structure will be created.
#' Default: \code{here::here()}.
#' @param create_renv Logical indicating whether to lockfile to handle 
#' package dependencies with the package {renv}. Default: FALSE.
#' 
#' @return A standard directory structure
#' @rdname create_project_tree
#' @importFrom fs dir_create dir_tree
#' @importFrom rmarkdown draft
#' @importFrom here here
#' @export
#' @examples 
#' rootdir <- file.path(tempdir(), "tidyproj_example")
#' c <- create_project_tree(rootdir)
create_project_tree <- function(rootdir = here::here(), create_renv = FALSE) {

    fs::dir_create(rootdir)    
    
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
    
    # Documents inside directories
    rmarkdown::draft(
        file.path(rootdir, "data", "DATA_DESCRIPTION.Rmd"),
        template = "github_document", package = "rmarkdown", edit = FALSE
    )
    
    docs <- c(
        file.path(rootdir, "code", "01_first_analysis.Rmd"),
        file.path(rootdir, "code", "02_second_analysis.Rmd"),
        file.path(rootdir, "code", "03_third_analysis.Rmd"),
        file.path(rootdir, "code", "04_fourth_analysis.Rmd")
    )
    
    # Create .Rmd files
    create_rmd <- lapply(docs, function(x) {
        c <- rmarkdown::draft(
            x,
            template = "template-for-code", package = "tidyproj", 
            edit = FALSE
        )
        return(c)
    })
    
    return(fs::dir_tree(rootdir))
}
