test_that("multiplication works", {
  expect_equal(resume("Dengue"))
  expect_error(resume(1),"resume_error: expected an alphanumeric value")
})
