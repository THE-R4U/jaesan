#' query name of peaple who work(ed) for Korea Government
#'
#' This function use newstapa site \url{https://jaesan.newstapa.org/}
#'
#' @param name query string for search name or title in gov.
#' @param msg announce root url. Defualt is TRUE.
#'
#' @importFrom httr add_headers POST content
#' @importFrom rvest html_nodes html_text
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#' @importFrom attempt stop_if_not
#'
#' @return a [tibble][tibble::tibble-package]
#'
#' @export

query <- function(name, msg = T) {
  attempt::stop_if_not(.x = curl::has_internet(),
              msg = "You should have internet to do that")
  if (msg) {
    message('root url is "https://jaesan.newstapa.org/"')
  }
  httr::POST("https://jaesan.newstapa.org/get_list",
             config = httr::add_headers(`X-Requested-With` = "XMLHttpRequest"),
             body = list(dataType = "json", phrase = name),
             encode = "json") %>%
    httr::content() %>%
    rvest::html_nodes("p") %>%
    rvest::html_text() %>%
    jsonlite::fromJSON() %>%
    tibble::as_tibble() %>%
    return()
}

