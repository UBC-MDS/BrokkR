#' Create ID
#'
#' Convert a vector of provided urls into a vector of unique identifiers for use in downstream functions.
#'
#' @param urls A vector of urls as strings.
#'
#' @return A vector of unique identifiers as strings.
#' @export
#'
#' @examples
#' urls <- c('https://www.reddit.com/r/nba/', 'https://www.reddit.com/r/nfl/', 'https://vancouver.craigslist.org/search/apa', 'https://www.kijiji.ca/b-real-estate/richmond-bc/c34l1700288')
#' create_id(urls)
#' [1] 'reddit1'  'reddit2'  'craigslist1'  'kijiji1'
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
