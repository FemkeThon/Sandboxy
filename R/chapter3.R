#' Demonstrates what I did with the chapter 2 excercises.
#' @param diamonds, the diamonds input file
#' @return a file containing my results.
#' @export
#' @author Femke Thon

chapter3 <- function(input){
  file                <- NULL
  set.seed(1410)
  file$data           <- input
  file$plots$scatter  <- qplot(displ, hwy, data = file$data,
                               colour = factor(cyl))
  file$plots$layered  <- qplot(displ, hwy, data = file$data, facets = .~year) +
                               geom_smooth()
  file$plots$laycol   <- qplot(displ, hwy, data = file$data, facets = .~cyl,
                               color = factor(cyl)) + geom_smooth()

  file
}

