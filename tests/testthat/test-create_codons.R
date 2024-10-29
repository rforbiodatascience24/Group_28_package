

test1 <- create_codons("AUGCUA", start = 1)
testthat::expect_equal(test1, c("AUG", "CUA"))


