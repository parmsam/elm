# Unit tests for elm_treemap_files function
test_that("elm_treemap_files returns correct plot", {
  res <- elm_treemap_files()
  expect_s3_class(res, "highchart")
})

# Unit tests for elm_treemap_folders function
test_that("elm_treemap_folders returns correct plot", {
  res <- elm_treemap_folders()
  expect_s3_class(res, "highchart")
})

# Unit tests for elm_treemap function
test_that("elm_treemap returns correct plot with interactive = TRUE", {
  data <- get_files_tibble()
  res <- elm_treemap(data, interactive = TRUE)
  expect_s3_class(res, "highchart")
})

test_that("elm_treemap returns correct plot with interactive = FALSE", {
  data <- get_files_tibble()
  res <- elm_treemap(data, interactive = FALSE)
  expect_type(res, "list")
})
