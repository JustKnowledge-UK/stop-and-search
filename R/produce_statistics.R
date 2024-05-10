library(tidyverse)
library(epitools)
rm(list=ls())
source("./R/analyse_ss_records.R")
source("./R/riskratio_from_df.R")


pattern <- "ew_extraction"

files <- list.files(path = "./outputs/data/", pattern = pattern, full.names = TRUE)

data <-  readr::read_csv(files)

analysed_data <- analyse_ss_records(data, csvs = T)
