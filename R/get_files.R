#' Get file information as a tibble
#'
#' This function returns a tibble of file information for a given path. By default, it includes both files and directories, but can be limited to directories only by setting `dir_only` to TRUE.
#'
#' @param path A character string specifying the path to the directory of interest.
#' @param dir_only A logical value indicating whether to limit results to directories only. Default is FALSE.
#' @param hidden A logical value indicating whether to include hidden files in the results. Default is FALSE.
#' @param ... Additional arguments to be passed to `fs::dir_info()`.
#'
#' @return A tibble with file information for the specified path.
#'
#' @importFrom fs dir_info
#' @importFrom dplyr mutate
#' @importFrom purrr map map_chr
#' @importFrom rlang as_bytes
#'
#' @export
#' @examples
#' get_files_tibble("~/Documents/")
get_files_tibble <- function(path = ".",
                             dir_only = FALSE,
                             hidden = FALSE,
                             ...) {
  type = c("any")
  if (dir_only) {
    type = c("dir")
  }
  tree_tbl <-
    fs::dir_info(
      path = path,
      type = type,
      all = hidden,
      recurse = T,
      ...
    ) %>%
    dplyr::mutate(bytes = as.integer(size)) %>%
    dplyr::mutate(split_path = purrr::map(path, ~ fs::path_split(.)[[1]])) %>%
    dplyr::mutate(file = purrr::map_chr(split_path, tail, 1)) %>%
    dplyr::mutate(parent = purrr::map(split_path, get_parent_folders)) %>%
    dplyr::mutate(has_parent = ifelse(parent == ".", FALSE, TRUE)) %>%
    dplyr::mutate(size_chr = as.character(rlang::as_bytes(bytes)))
  return(tree_tbl)
}

#' Get parent folders from a path
#'
#' This function returns the parent folder of a given path split into individual directory names.
#'
#' @param path_split A character vector representing the split path of a file or directory.
#'
#' @return A character string representing the parent folder of the specified path.
#'
#' @examples
#' get_parent_folders(fs::path_split("~/Documents/folder/file.txt"))
#' @export
get_parent_folders <- function(path_split) {
  path_split <- unlist(path_split)
  parent <- path_split[length(path_split) - 1]
  if (length(parent) == 0) {
    parent <- "."
  }
  return(parent)
}
