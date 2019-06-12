#' search name of peaple who worked for Korea
#'
#' This function use newstapa site \url{https://jaesan.newstapa.org/}
#'
#' @param name_query query string for search name.
#' @importFrom httr add_headers POST content
#' @importFrom rvest html_nodes html_text
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#' @return a [tibble][tibble::tibble-package]
#' @export
search <- function(name_query) {
  stop_if_not(.x = curl::has_internet(),
              msg = "You should have internet to do that")
  message('root url is "https://jaesan.newstapa.org/"')
  httr::POST("https://jaesan.newstapa.org/get_list",
             httr::add_headers(`X-Requested-With` = "XMLHttpRequest"),
             body = list(dataType = "json", phrase = name_query)) %>%
    httr::content() %>%
    rvest::html_nodes("p") %>%
    rvest::html_text() %>%
    jsonlite::fromJSON() %>%
    tibble::as_tibble() %>%
    return()
}

