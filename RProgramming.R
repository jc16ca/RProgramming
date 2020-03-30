install.packages("swirl")
library(swirl)
install_from_swirl("R Programming")

swirl()

# add 2 values

add2 <- function(x, y) {
  x + y
}

# return numbers in a vector above 10

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above10v2 <- function(x) {
  result <- vector()
  for (i in 1:length(x)) {
    if(x[i] > 10) {
      result <- c(result, x[i])
    }
  }
  result
}

above <- function(x, n) {
  use <- x > n
  x[use]
}

columnMean <- function(x, removeNA = TRUE) {
  colMeans <- numeric()
  for(i in 1:ncol(x)) {
    colMeans <- c(colMeans, mean(x[, i], na.rm = TRUE))
  }
  colMeans
}

testMatrix <- cbind(c(2,NA,7), c(124, 12, 59), c(1354, 124, 124))
columnMean(testMatrix)
identical(columnMean(testMatrix), colMeans(testMatrix, na.rm = TRUE))
