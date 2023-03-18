get_files_tibble <- function(path = ".",
                             dir_only = FALSE,
                             hidden = FALSE) {
  type = c("any")
  if(dir_only){
    type = c("dir")
  }
  tree_tbl <-
    fs::dir_info(path = path, type = type, all = hidden, recurse = T) |>
    dplyr::mutate(bytes = as.integer(size)) %>%
    dplyr::mutate(split_path = purrr::map(path, ~fs::path_split(.)[[1]])) |>
    dplyr::mutate(file = purrr::map_chr(split_path, tail, 1)) %>%
    dplyr::mutate(parent = purrr::map(split_path, get_parent_dir)) %>%
    dplyr::mutate(has_parent = ifelse(parent == ".", FALSE, TRUE)) %>%
    dplyr::mutate(size_chr = as.character(rlang::as_bytes(bytes)))
  return(tree_tbl)
}

get_parent_dir <- function(path_split){
  path_split <- unlist(path_split)
  parent <- path_split[length(path_split)-1]
  if(length(parent) == 0){
    parent <- "."
  }
  return(parent)
}
