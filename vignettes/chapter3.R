## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ------------------------------------------------------------------------
library(Sandboxy)
library(ggplot2)

## ------------------------------------------------------------------------
result <- chapter3()
names(result)
names(result$plots)

