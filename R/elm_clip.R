elm_clip_files <- function(path = ".", ...) {
  elm_clip(path = ".", dir_only = FALSE, ...)
}

elm_clip_folders <- function(path = ".", ...) {
  elm_clip(path = ".", dir_only = TRUE, ...)
}

elm_clip <- function(path = ".", dir_only = FALSE, ...) {
  tree <- get_tree(path = path, dir_only = dir_only, ...)
  safe_copy(write_tree(tree))
  return(tree)
}

