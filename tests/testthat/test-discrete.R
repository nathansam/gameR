test_that("Error when unexpected palette is requested", {
  expect_error(gameR_cols("bob"))
})

test_that("Palette names are in alphabetical order", {
  expect_equal(names(gameR_colors), sort(names(gameR_colors)))
})

test_that("Reverse argument works as expected", {
  expect_equal(gameR::gameR_cols("cowboy", reverse = TRUE),
               c("#ffab00","#000000", "#cf0512"))
})

test_that("Calling function with no arguments gives palette names", {
  expect_equal(gameR_cols(),
               names(gameR_colors))
})
