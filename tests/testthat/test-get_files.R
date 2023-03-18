# Unit tests for get_files_tibble function
test_that("get_files_tibble returns tibble object", {
  res <- get_files_tibble()
  expect_s3_class(res, "tbl_df")
})

test_that("get_files_tibble returns correct columns", {
  res <- get_files_tibble()
  expect_true(all(c("path", "type", "size", "bytes", "split_path", "file",
                    "parent", "has_parent", "size_chr") %in% colnames(res)))
})

# Unit tests for get_parent_folders function
test_that("get_parent_folders returns correct parent folder", {
  path <- "/Users/test/folder1/folder2/file.txt"
  res <- get_parent_folders(fs::path_split(path))
  expect_equal(res, "folder2")
})

test_that("get_parent_folders returns '.' for top level folder", {
  path <- "file.txt"
  res <- get_parent_folders(fs::path_split(path))
  expect_equal(res, ".")
})
