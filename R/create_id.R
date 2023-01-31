#' Create ID
#'
#' Convert a character vector of provided urls into a character vector of unique identifiers for use in downstream functions.
#'
#' @param urls A character vector of urls.
#'
#' @return A character vector of unique identifiers.
#' @export
#'
#' @examples
#' urls <- c('https://www.reddit.com/r/nba/', 'https://www.reddit.com/r/nfl/', 'https://vancouver.craigslist.org/search/apa', 'https://www.kaggle.com/search?q=nba')
#' create_id(urls)
#' 'reddit  reddit.1  craigslist  kaggle'
create_id <- function(urls){
  ids <- c()
  for (url in urls) {
    website_split <- unlist(strsplit(url, "\\."))
    website_name <- website_split[2]
    ids <- c(ids, website_name)
  }
  ids <- make.unique(ids)
  ids
}
