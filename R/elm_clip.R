#' Copy the tree structure of files and directories to the clipboard
#'
#' @param path the path to search
#' @param ... additional arguments passed to `fs::dir_tree`
#' @return a tree structure of files and directories
#' @export
elm_clip_files <- function(path = ".", ...) {
  elm_clip(path = ".", dir_only = FALSE, ...)
}

#' Copy the tree structure of directories to the clipboard
#'
#' @param path the path to search
#' @param ... additional arguments passed to `get_tree`
#' @return nothing, copies the file tree to the clipboard
#' @export
elm_clip_folders <- function(path = ".", ...) {
  elm_clip(path = ".", dir_only = TRUE, ...)
}

#' Copy the file tree to the clipboard
#'
#' @param path the path to search
#' @param dir_only logical indicating whether to return only directories or both files and directories
#' @param ... additional arguments passed to `elm_clip`
#' @return nothing, copies the file tree of files to the clipboard
elm_clip <- function(path = ".",
                     dir_only = FALSE,
                     ...) {
  tree <- get_tree(path = path, dir_only = dir_only, ...)
  safe_copy(write_tree(tree))
  return(tree)
}
