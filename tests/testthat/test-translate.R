translate(c("UAU", "UGC", "CGC", "CGG"))


test1 <- translate(c("UAU", "UGC", "CGC", "CGG"))
testthat::expect_equal(test1, "YCRR")

