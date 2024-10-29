test1 <- sample_nucleotides(1)
# Test sequence with 1 nucleotide
testthat::expect_equal(length(test1), 1)

test2 <- sample_nucleotides(3)
# Test sequence with 3 nucleotide
testthat::expect_equal(length(test2), 1)

test3 <- sample_nucleotides(55)
# Test sequence with 5 nucleotide
testthat::expect_equal(length(test3), 1)

test4 <- sample_nucleotides(1000)
# Test sequence with 1000 nucleotide
testthat::expect_equal(length(test4), 1)
