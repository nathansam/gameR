test_that("Error when unexpected palette is requested", {
  expect_error(paintR_cols("bob"))
})
