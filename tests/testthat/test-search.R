test_that("search http req work", {
  testthat::expect_silent(search(intToUtf8(45432)))
})
