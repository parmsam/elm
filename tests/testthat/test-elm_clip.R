# Unit tests for elm_clip_files function
test_that("elm_clip_files returns fs_path object", {
  res <- elm_clip_files()
  expect_s3_class(res, "fs_path")
})

# Unit tests for elm_clip_folders function
test_that("elm_clip_folders returns fs_path object", {
  res <- elm_clip_folders()
  expect_s3_class(res, "fs_path")
})
