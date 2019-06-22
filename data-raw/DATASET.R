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
# remotes::install_github("r-lib/zip")
library(zip)

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
    ~ expand.grid(zip_name = .x, xlsx = .y) %>% as_tibble()
  ) %>%
  transpose() %>%
  map(
    ~ zip::unzip(.x$zip_name, exdir = "data-raw/out", junkpaths = T)
  )

fs::dir_ls("data-raw/out", glob = "*records.csv") %>%
  .[1:9] %>%
  map_dfr(
    ~ read_csv(
      .x,
      col_types = cols(.default = col_character()),
      locale = locale(encoding = "UTF-8")
      ) %>%
      select(-`순번`)
  ) ->
  raws

raws %>%
  select(-X18, -X19) %>%
  mutate(
    `이름` = if_else(is.na(`이름`), `성명`, `이름`)
    ) %>%
  filter(!is.na(`이름`)) %>%
  select(-`성명`) %>%
  mutate(
    `연도` = parse_number(`연도`)
  ) %>%
  mutate_at(
    vars(contains("액")),
    parse_number
  ) -> raw19

recode2011 <- raw19 %>% filter(`연도` ==  2011)
recode2012 <- raw19 %>% filter(`연도` ==  2012)
recode2013 <- raw19 %>% filter(`연도` ==  2013)
recode2014 <- raw19 %>% filter(`연도` ==  2014)
recode2015 <- raw19 %>% filter(`연도` ==  2015)
recode2016 <- raw19 %>% filter(`연도` ==  2016)
recode2017 <- raw19 %>% filter(`연도` ==  2017)
recode2018 <- raw19 %>% filter(`연도` ==  2018)

usethis::use_data(recode2011, overwrite = T)
usethis::use_data(recode2012, overwrite = T)
usethis::use_data(recode2013, overwrite = T)
usethis::use_data(recode2014, overwrite = T)
usethis::use_data(recode2015, overwrite = T)
usethis::use_data(recode2016, overwrite = T)
usethis::use_data(recode2017, overwrite = T)
usethis::use_data(recode2018, overwrite = T)

fs::dir_delete("data-raw/out/")
