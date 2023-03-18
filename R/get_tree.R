safe_copy <- function(tree, prefix = "\t\t"){
  tree <- paste0(prefix, tree)
  message("Tree copied to clipboard.")
  message("Files and/or folders in the tree returned.")
  clipr::write_clip(tree, allow_non_interactive = TRUE)
}

write_tree <- function(tree){
  capture.output(tree)
}

get_tree <- function(path = ".", dir_only = FALSE, hidden = FALSE) {
  type = c("any")
  if(dir_only){
    type = c("dir")
  }
  tree <- fs::dir_tree(path = path, type = type, all = hidden)
  return(tree)
}
