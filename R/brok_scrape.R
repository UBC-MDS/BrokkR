#' brok_scrape
#' 
#' Scrapes an HTML site with rvest and returns a tibble containing the original URL and the scraped and simplified text
#' 
#' @param urls: a vector of target URLs as strings
#' 
#' @return scrapes: a tibble containing the original URL and the simplified text
#' @export
#' 
#' @examples 
#' 
#' brok_scrape(['https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html', 'https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html'])
#' 
#'                            url
#' https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html       | Fake Python Fake Jobs for Your Web Scraping Journey Energy engineer Vasquez-Davidson Party prevent live. Quickly candidate change although. Together type music hospital. Every speech support time operation wear often. Location: Christopherville, AA Posted: 2021-04-08
#' https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html   | Fake Python Fake Jobs for Your Web Scraping Journey Materials engineer Davis, Serrano and Cook Approach great top series public none. Include air sort couple hold group but. Again identify real to follow so. Live teach movie I situation understand agree. Location: South Tammyberg, AP Posted: 2021-04-08
#' 
brok_scrape <- function(urls){
  # Code goes here
  
}

