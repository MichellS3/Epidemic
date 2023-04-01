test_that("multiplication works", {
  z=c("Malaria",2016)
  expect_equal(resumen(z,958))
  expect_error(resumen("Dengue"),"resumen_error: expected a vector of length two")
  })
