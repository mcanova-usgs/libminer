test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("lib_summary returns expected results", {
  res <- lib_summary()
  expect_s3_class(res, "data.frame")
  expect_equal(ncol(res), 2)
  expect_equal(names(res), c("Library", "n_packages"))
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fail appropiateley", {
  expect_error(lib_summary("foo"), "unused argument")
})