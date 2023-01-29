#' Duster
#'
#' Prepares a pandas dataframe by webscraping raw text from a list of urls ready to be input into a machine learning model
#'
#' @param urls : vector of target urls as strings
#'
#' @return df : A tibble with the webpage identifiers as a index, the raw url, and the raw text from the webpage with extra line breaks removed
#' @export
#'
#' @examples
#' duster(c('https://www.cnn.com/world', 'https://www.foxnews.com/world', 'https://www.cbc.ca/news/world'))
#'             url                                           raw_text
#' id
#' cnn1          https://www.cnn.com/world   World news - breaking news, video, headlines ...
#' foxnews1  https://www.foxnews.com/world  World | Fox NewsFox News   U.S.PoliticsMediaOp...
#' cbc1      https://www.cbc.ca/news/world  World - CBC NewsContentSkip to Main ContentAcc...

duster <- function(urls){
  input <- brok_scrape(urls)

}
