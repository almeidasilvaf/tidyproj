
#' Create project tree
#' 
#' This function creates a standard directory structure for scientific projects.
#' 
#' @param create_renv Logical indicating whether to lockfile to handle 
#' package dependencies with the package {renv}. Default: TRUE.
#' 
#' @return A standard directory structure
#' @rdname create_project_tree
#' @importFrom fs dir_create file_create
#' @importFrom rmarkdown draft
#' @importFrom here here
#' @importFrom renv init
#' @export
create_project_tree <- function(create_renv = TRUE) {
    if(create_renv) {
        renv::init()
    }
    fs::dir_create(here::here("code"))
    rmarkdown::draft(here::here("code", "01_first_analysis.Rmd"), 
                     template = "template-for-code", package = "tidyproj", 
                     edit = FALSE)
    rmarkdown::draft(here::here("code", "02_second_analysis.Rmd"), 
                     template = "template-for-code",
                     package = "tidyproj", edit = FALSE)
    rmarkdown::draft(here::here("code", "03_third_analysis.Rmd"), 
                     template = "template-for-code",
                     package = "tidyproj", edit = FALSE)
    rmarkdown::draft(here::here("code", "04_fourth_analysis.Rmd"), 
                     template = "template-for-code",
                     package = "tidyproj", edit = FALSE)
    fs::dir_create(here::here("data"))
    fs::file_create(here::here("data", "DATA_DESCRIPTION.md"))
    fs::file_create(here::here("README.md"))
    fs::dir_create(here::here("products"))
    fs::dir_create(here::here("products", "result_files"))
    fs::dir_create(here::here("products", "plots"))
    fs::dir_create(here::here("products", "figs"))
    fs::dir_create(here::here("products", "tables"))
}
