#' Demonstrates what I did with the chapter 2 excercises.
#' @param diamonds, the diamonds input file
#' @return a file containing my results.
#' @export
#' @author Femke Thon

chapter3 <- function(input){
  file          <- NULL
  set.seed(1410)
  file$data           <- ggplot2::diamonds[
                                  sample(nrow(ggplot2::diamonds), 100), ]
  file
}

