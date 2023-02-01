#' Brok Scrape
#'
#' Scrapes an HTML site with rvest and returns a tibble containing the original URL and the scraped and simplified text
#'
#' @param urls a vector of target URLs as strings
#'
#' @return scrapes: a tibble containing the original URL and the simplified text
#' @export
#'
#' @examples
#'
#' brok_scrape(c('https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html', 'https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html'))
#'
#'                            "url                                                                        text
#' https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html       | Fake Python Fake Jobs for Your Web Scraping Journey ...
#' https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html   | Fake Python Fake Jobs for Your Web Scraping Journey ..."

brok_scrape <- function(urls){

  alligator <- list()
  for (i in urls) {
    wp <- polite::bow(i, force = TRUE)
    testthat::test_that('The webpage is not returning text', {testthat::expect_true(typeof(wp) == 'list')})
    scr_wp <- polite::scrape(wp) |>
      rvest::html_text2()
    alligator <- append(alligator, scr_wp)
  }
  return(alligator)
  testthat::test_that('The output is not a character vector', {testthat::expect_true(typeof(alligator) == 'character')})
}
