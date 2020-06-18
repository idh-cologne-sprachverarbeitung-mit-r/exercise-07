library(datasets)

b <- mean(mtcars$cyl)

readCorpus <- function(directory.name = "data") {final.list <- list()
list.files(directory.name, pattern="\\.txt", full.names = TRUE) -> collection
for(file in collection) {
  scan(file, what="char", sep="\n", strip.white = TRUE) -> file.lines
  file.tokens <- unlist(strsplit(file.lines, " "))
  final.list <- append(final.list, list(file.tokens))
}
return(final.list)
}

removeStopwords <- function(listacorpus) {
  stop.words <- c("i", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours", "yourself", "yourselves", "he", "him", "his", "himself", "she", "her", "hers", "herself", "it", "its", "itself", "they", "them", "their", "theirs", "themselves", "what", "which", "who", "whom", "this", "that", "these", "those", "am", "is", "are", "was", "were", "be", "been", "being", "have", "has", "had", "having", "do", "does", "did", "doing", "a", "an", "the", "and", "but", "if", "or", "because", "as", "until", "while", "of", "at", "by", "for", "with", "about", "against", "between", "into", "through", "during", "before", "after", "above", "below", "to", "from", "up", "down", "in", "out", "on", "off", "over", "under", "again", "further", "then", "once", "here", "there", "when", "where", "why", "how", "all", "any", "both", "each", "few", "more", "most", "other", "some", "such", "no", "nor", "not", "only", "own", "same", "so", "than", "too", "very", "s", "t", "can", "will", "just", "don", "should", "now")
  removeStopWordsfromVec <- function(corpus) {
    corpus.without.stopwords <- corpus[!(corpus %in% stop.words)]
    return(corpus.without.stopwords)
  }
  
  return(lapply(listacorpus, removeStopWordsfromVec))
}
