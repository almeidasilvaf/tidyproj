
#' Create project tree
#' 
#' This function creates a standard directory structure for scientific projects.
#' 
#' @param rootdir Path to root directory where the structure will be created.
#' Default: \code{here::here()}.
#' 
#' @return A character vector with aths to the directory structure.
#' 
#' @rdname create_project_tree
#' @importFrom fs dir_create dir_tree
#' @importFrom rmarkdown draft
#' @importFrom here here
#' @export
#' @examples 
#' rootdir <- file.path(tempdir(), paste0(sample(1:100, 1), "_tidyproj_ex")
#' c <- create_project_tree(rootdir)
create_project_tree <- function(rootdir = here::here()) {

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

#' Create an .Rmd file for code
#'
#' @param rootdir Path to root of the directory created 
#' with \code{create_project_tree()}. Default: \code{here::here().}
#' Default: \code{here::here()}.
#' @param filename Character specifying the name of the .Rmd file to be 
#' created. Default: 0_new_code_file.Rmd.
#' 
#' 
#' @return Path to newly created .Rmd file.
#' 
#' @export
#' @rdname create_rmd
#' @importFrom rmarkdown draft
#' @examples 
#' rootdir <- file.path(tempdir(), "tidyproj_example")
#' c <- create_project_tree(rootdir)
#' 
#' # Create file
#' fname <- paste0(sample(1:100, 1), "_new_analysis.Rmd")
#' file <- create_rmd(rootdir, filename = fname)
create_rmd <- function(rootdir = here::here(), 
                       filename = "00_new_code_file.Rmd") {
    
    file_path <- file.path(rootdir, "code", filename)
    c <- rmarkdown::draft(
        file_path,
        template = "template-for-code", package = "tidyproj", 
        edit = FALSE
    )
    return(file_path)
}

