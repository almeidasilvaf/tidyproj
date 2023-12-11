

#' Set up directory for a Quarto book
#' 
#' @param rootdir Character with path to the root directory
#'
#' @return A character vector with paths to the directory structure.
#' 
#' @export
#' @rdname setup_quarto_book
#' @importFrom fs file_copy dir_tree
#' @importFrom here here
#' @examples
#' rootdir <- tempdir()
#'
#' setup_quarto_book(rootdir)
#' 
setup_quarto_book <- function(rootdir = here()) {
    
    # Create `index.qmd`
    index_file <- system.file("extdata", "index.qmd", package = "tidyproj")
    fs::file_copy(index_file, file.path(rootdir, "index.qmd"))
    
    # Create `bibliography.bib`
    fs::file_create(file.path(rootdir, "bibliography.bib"))
    
    # Create `_quarto.yml`
    yaml_file <- system.file("extdata", "_quarto.yml", package = "tidyproj")
    fs::file_copy(yaml_file, file.path(rootdir, "_quarto.yml"))
    
    # Create `.gitignore`
    ignore_lines <- c(
        ".Rproj.user", ".Rhistory", ".RData", ".Ruserdata",
        "/.quarto/", "/_book/"
    )
    writeLines(ignore_lines, con = file.path(rootdir, ".gitignore"))
    
    # Create `chapters/` dir with chapters inside
    fs::dir_create(file.path(rootdir, "chapters"))
    chapter_file <- system.file("extdata", "chapter.qmd", package = "tidyproj")
    c <- lapply(
        file.path(rootdir, "chapters", paste0("chapter_0", 1:2, ".qmd")), 
        add_chapter
    )
    
    # Add appendices.qmd
    app_file <- system.file("extdata", "appendices.qmd", package = "tidyproj")
    fs::file_copy(app_file, file.path(rootdir, "chapters/appendices.qmd"))
    
    # Add GHA workflow
    fs::dir_create(file.path(rootdir, ".github/workflows"))
    gha_file <- system.file("extdata", "publish.yml", package = "tidyproj")
    fs::file_copy(gha_file, file.path(rootdir, ".github/workflows", "publish.yml"))
    
    return(fs::dir_tree(rootdir))
}


#' Add a new .qmd file representing a Quarto book chapter
#' 
#' @param filename Character indicating the path to the .qmd file to 
#' be created.
#'
#' @return Character with path to .qmd files.
#' 
#' @importFrom fs file_copy
#' @importFrom here here
#' @export
#' @rdname add_chapter
#' @examples
#' path <- tempdir()
#' c <- add_chapter(filename = tempfile(fileext = ".qmd"))
add_chapter <- function(filename = here("chapters", "chapter_0X.qmd")) {
    
    chapter_file <- system.file("extdata", "chapter.qmd", package = "tidyproj")
    path <- fs::file_copy(chapter_file, filename)
    
    return(path)
}


