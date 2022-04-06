test_that("Error handling for n argument", {
  expect_error(gameR_cont(n = 1.5, "fallout"),
               "n should be a positive integer\n")

  expect_error(gameR_cont(n = -1.5, "fallout"),
               "n should be a positive integer\n")

  expect_error(gameR_cont(n = NA, "fallout"),
               "n should be a positive integer\n")

  expect_error(gameR_cont(n = "fallout", "fallout"),
               "n should be of type numeric\n")
})

test_that("Give expected values", {
  expect_equal(gameR_cont(5, "rayman"),
               c("#945682", "#EFD16C", "#FFF55A", "#FFC34D","#BE3B45"))
})
