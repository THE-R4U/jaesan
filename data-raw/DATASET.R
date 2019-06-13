## code to prepare `DATASET` dataset goes here

library(dplyr)
library(rvest)
library(stringr)
library(crul)
library(purrr)
library(readr)
library(readxl)
library(fs)
# remotes::install_github("jimhester/archive")
library(archive)
library(googledrive)
library(lubridate)

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

fs::dir_ls("data-raw", glob = "*.zip") %>%
  map(
    ~ archive(.x) %>%
      filter(str_detect(path, "xlsx")) %>%
      pull(path)
  ) %>%
  map2_dfr(str_c("./data-raw/",file_names), .,
    ~ expand.grid(.x, .y) %>% as_tibble()
  ) %>%
  transpose() %>%
  map(
    ~ unzip(.x$Var1, files =  .x$Var2, exdir = "data-raw", junkpaths = T)
  )

fs::dir_ls("data-raw", glob = "*.xlsx") %>%
  map(
    ~ read_xlsx(
      .x,
      sheet = 3,
      col_types = "text"
      ) %>%
      select(-`순번`) %>%
      when(
        names(.)
      )
  ) ->
  raws

raws %>%
  select(-`순번`) %>%
  mutate(
    `연도` = as.integer(`연도`),
    `종전가액` = parse_number(`종전가액`),
    )

archive_read(str_c("./data-raw/",file_names)[1])

usethis::use_data("DATASET")
