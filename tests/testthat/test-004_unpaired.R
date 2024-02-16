testthat::test_that("unpaired, unbalanced comparisons work", {
    set.seed(101)
    dd <- data.frame(f = rep(c("a", "b"), c(11, 9)), y = rnorm(20))
    unpaired_mean_diff <- dabestr::load(dd, x= f, y = y, idx = c("a", "b"))  %>%
                                                             dabestr::mean_diff()
