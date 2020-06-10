library(testthat)

source("R/exercise.R")

test_that("b) yields the correct result", {
	expect_equal(b, 6.1875, tolerance=1e-3)
})


test_that("readCorpus) yields the correct result", {
	corp <- readCorpus("data")
	expect_length(corp, 97)
	expect_equal(sum(unlist(lapply(corp,length))), 821307)
	expect_equal(mode(corp[[5]]), "character")
})

test_that("removeStopwords) yields the correct result in a dummy situation", {
	corp <- list(c("the","dog","barks"),c("i","like","them"))
	corp2 <- removeStopwords(corp)
	expect_length(corp2[[1]],2)
	expect_length(corp2[[2]],1)
})

test_that("removeStopwords) yields the correct result if called with the given stopwords", {
	corp <- readCorpus("data")
	corp2 <- removeStopwords(corp)
	expect_length(corp2, 97)
	expect_equal(sum(unlist(lapply(corp2,length))), 454341)
	expect_equal(mode(corp[[5]]), "character")
})
	
test_that("removeStopwords) yields the correct result if called w/o stopwords", {
	corp <- readCorpus("data")
	corp2 <- removeStopwords(corp, stopwords=c())
	expect_equal(sum(unlist(lapply(corp2,length))), 821307)
})

