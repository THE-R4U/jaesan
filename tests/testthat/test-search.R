test_that("query http req work", {
  expect_message(query(name =intToUtf8(45432)))
  expect(any(class(query(intToUtf8(45432), msg = F)) %in% "tbl"))
})
