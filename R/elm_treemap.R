elm_treemap_file <- function(path = ".", dir_only = F) {
  data <- get_files_tibble(path = path, dir_only = dir_only)
  # dplyr::filter(type == "file")
  elm_treemap(data, "files treemap")
}
elm_treemap_dir <- function(path = ".", dir_only = T) {
  data <- get_files_tibble(path = path, dir_only = dir_only)
  # dplyr::filter(type == "file")
  elm_treemap(data, "folders treemap")
}

elm_treemap <- function(files_tibble,
                        title = "Files or folders treemap",
                        interactive = T){
  if(interactive){
    files_tibble %>%
      highcharter::hchart("treemap",
                          highcharter::hcaes(
                            x = file,
                            color = bytes,
                            value = bytes,
                            test = size_chr
                          )) %>%
      highcharter::hc_tooltip(pointFormat = "{point.test}") %>%
      highcharter::hc_title(text = title)
  }
}
