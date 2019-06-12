## code to prepare `DATASET` dataset goes here

library(dplyr)
library(rvest)
library(readr)
library(stringr)
library(crul)
library(purrr)
library(readr)
library(archive)
library(googledrive)

"https://jaesan.newstapa.org/data" %>%
  read_html() %>%
  html_nodes("#result_s a") ->
  node

node %>%
  html_attr("href") ->
  tars

node %>%
  html_text() %>%
  parse_number() %>%
  str_c("jaesan",.,".zip") ->
  file_names

cc <- Async$new(urls = tars)
res <- cc$get(disk = str_c("./data-raw/", file_names), verbose = F)

str_c("./data-raw/",file_names) %>%
  map(
    ~ archive(.x) %>%
      filter(str_detect(path, "records")) %>%
      filter(!str_detect(path, "MAC")) %>%
      pull(path)
  ) %>%
  map2_dfr(str_c("./data-raw/",file_names), .,
    ~ expand.grid(.x, .y) %>% as_tibble()
  ) %>%
  transpose() ->
  tar_list

tar_list %>%
  .[1:5] %>%
  map_dfr(
    ~ read_csv(archive_read(.x$Var1, .x$Var2), progress = F)
  ) %>%
  select(`순번`:`변동사유`) ->
  dat
tar_list[6][[1]] %>%
  with(read_csv(archive_read(Var1, Var2)))


archive_read(str_c("./data-raw/",file_names)[1])

usethis::use_data("DATASET")
