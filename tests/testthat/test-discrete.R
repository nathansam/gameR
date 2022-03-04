test_that("Error when unexpected palette is requested", {
  expect_error(gameR_cols("bob"))
})
