test_that("multiplication works", {
  expect_equal(resumen(53,73))
  expect_error(resumen("Dengue"),"resumen_error: expected a numeric value")
})

