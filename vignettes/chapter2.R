## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ------------------------------------------------------------------------
library(Sandboxy)
library(ggplot2)

## ------------------------------------------------------------------------
result <- chapter2()
names(result)
names(result$plots)

## ------------------------------------------------------------------------
result$data

## ------------------------------------------------------------------------
result$plots$plot
result$plots$logplot
result$plots$xyzplot
result$plots$coloured
result$plots$shapes
result$plots$red
result$plots$alpha
result$plots$smooth1
result$plots$smooth2
result$plots$density
result$plots$histo1
result$plots$histo2
result$plots$histo3
result$plots$bar
result$plots$time
result$plots$path
result$plots$facets
result$plots$more

