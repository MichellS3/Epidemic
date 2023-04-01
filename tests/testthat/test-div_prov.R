test_that("multiplication works", {
  z=c("Dengue","ORELLANA", 2018)
    expect_equal(resumen(z,994))
    expect_error(resumen("Dengue"),"resumen_error: expected a vector of length three"))
})
