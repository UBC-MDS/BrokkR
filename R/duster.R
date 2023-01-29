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

library(dplyr)
library(stringr)

duster <- function(urls, test=FALSE){
  if(test==TRUE){
    text <- list("Fake Python\n\nFake Jobs for Your Web Scraping Journey\n\nEnergy engineer\nVasquez-Davidson\n\nParty prevent live. Quickly candidate change although. Together type music hospital. Every speech support time operation wear often.\n\nLocation: Christopherville, AA\n\nPosted: 2021-04-08",
                 "Fake Python\n\nFake Jobs for Your Web Scraping Journey\n\nMaterials engineer\nDavis, Serrano and Cook\n\nApproach great top series public none. Include air sort couple hold group but. Again identify real to follow so. Live teach movie I situation understand agree.\n\nLocation: South Tammyberg, AP\n\nPosted: 2021-04-08")
  }else{
    text <- brok_scrape(urls) |> unlist() |> str_replace_all("\n", " ")
  }
  ids <- create_id(urls)
  df <- tibble(id = ids,
               raw_url = urls,
               raw_text = text)
  df
}
