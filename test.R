library(testthat)

source("R/exercise.R")

test_that("b) yields the correct result", {
	expect_equal(b, 6.1875, tolerance=1e-3)
})


test_that("c) yields the correct result", {
	expect_equal(c, c(41.825046, 8.045578), tolerance=1e-3)
})

test_that("d) yields the correct result", {
	expect_equal(class(d),"data.frame")
	expect_equal(nrow(d),2)
	expect_equal(ncol(d),4)
	expect_setequal(d$name, c("Juliet","Romeo"))
	expect_equal(d[d$name=="Romeo","numWords"], 5563)
	expect_equal(d[d$name=="Juliet","ttr"], 0.2522209, tolerance=1e-3)
	expect_equal(d[d$name=="Romeo","numSentences"], 591, tolerance=1e-3)
})

test_that("e) yields the correct result", {
	expect_equal(e, "Romeo")
})