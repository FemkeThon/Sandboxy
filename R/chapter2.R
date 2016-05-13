#' Demonstrates what I did with the chapter 2 excercises.
#' @param diamonds, the diamonds input file
#' @return a file containing my results.
#' @export
#' @author Femke Thon

chapter2 <- function(diamonds){
  file          <- NULL
  set.seed(1410)
  file$data           <- ggplot2::diamonds[
                         sample(nrow(ggplot2::diamonds), 100), ]
  file$plots$plot     <- qplot(carat, price, data = file$data)
  file$plots$logplot  <- qplot(log(carat), log(price), data = file$data)
  file$plots$xyzplot  <- qplot(carat, x * y * z, data = file$data)
  file$plots$coloured <- qplot(carat, price, data = file$data, colour = color)
  file$plots$shapes   <- qplot(carat, price, data = file$data, shape = cut)
  file$plots$red      <- qplot(carat, price, data = file$data, shape = cut,
                               colour = I("red"))
  file$plots$alpha    <- qplot(carat, price, data = file$data, alpha = I(1/5))
  file$plots$smooth1  <- qplot(carat, price, data = file$data, geom = "smooth")
  file$plots$smooth2  <- qplot(carat, price, data = file$data,
                               geom = c("point", "smooth"))
  file$plots$density  <- qplot(carat, data = file$data, geom = "density")
  file$plots$histo1   <- qplot(carat, data = file$data, geom = "histogram",
                               binwidth = 1, xlim = c(0, 3))
  file$plots$histo2   <- qplot(carat, data = file$data, geom = "histogram",
                               binwidth = 0.1, xlim = c(0, 3))
  file$plots$histo3   <- qplot(carat, data = file$data, geom = "histogram",
                               binwidth = 0.1, fill = color)
  file$plots$bar      <- qplot(color, data = file$data, geom = "bar",
                               weight = carat) + scale_y_continuous("carat")
  file$plots$time     <- qplot(date, unemploy / pop, data = economics,
                               geom = "line")
  year                <- function(x) as.POSIXlt(x)$year + 1900
  file$plots$path     <- qplot(unemploy / pop, uempmed, data = economics,
                               geom = "path", colour = year(date))
  file$plots$facets   <- qplot(carat, data = file$data, facets = color ~ .,
                               geom = "histogram", binwidth = 0.1,
                               xlim = c(0, 3))
  file$plots$more     <- qplot(carat, data = file$data, facets = color ~ .,
                               geom = "histogram", binwidth = 0.1,
                               xlim = c(0, 3), main = "facetplot")
  file
}
