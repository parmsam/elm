#' Copy tree to clipboard and print to console.
#'
#' @param tree A character vector representing the file/folder tree to be copied.
#' @param prefix A character string to be added as prefix to each line of the tree.
#'
#' @return The function does not return any value.
#'
#' @importFrom clipr write_clip
#'
#' @examples
#' \dontrun{
#' safe_copy(write_tree(get_tree()))
#' }
safe_copy <- function(tree, prefix = "\t\t") {
  tree <- paste0(prefix, tree)
  message("Tree copied to clipboard.")
  message("Files and/or folders in the tree returned.")
  clipr::write_clip(tree, allow_non_interactive = TRUE)
}

#' Write a file/folder tree to character vector.
#'
#' @param tree A character vector representing the file/folder tree to be written.
#'
#' @return A character vector representing the file/folder tree.
#' @importFrom utils capture.output
#'
#' @examples
#' \dontrun{
#' write_tree(get_tree())
#' }
write_tree <- function(tree) {
  utils::capture.output(tree)
}

#' Get the file/folder tree of a given path.
#'
#' @param path A character string representing the path to the folder to be traversed.
#' @param dir_only A logical value indicating whether to only return directories in the tree.
#' @param hidden A logical value indicating whether to include hidden files/folders in the tree.
#'
#' @return A character vector representing the file/folder tree.
#'
#' @importFrom fs dir_tree
#'
#' @examples
#' \dontrun{
#' get_tree()
#' }
get_tree <- function(path = ".",
                     dir_only = FALSE,
                     hidden = FALSE) {
  type = c("any")
  if (dir_only) {
    type = c("dir")
  }
  tree <- fs::dir_tree(path = path, type = type, all = hidden)
  return(tree)
}
