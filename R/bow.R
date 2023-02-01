#'  Bow
#'
#'  Converts the last column of the data frame to a bag of words and return it
#'  along with other columns of the data frame.
#'
#' @param df a data frame with the last column of raw text
#'
#' @return a data frame which consists of the n-1 first columns of the input data frame as its n-1 first columns,
#'         plus a bag of words out the input data frame in its following numerous columns.
#' @export
#'
#' @examples
#' df <- data.frame(
#'     url = c("https://www.cnn.com/world",
#'             "https://www.foxnews.com/world",
#'             "https://www.cbc.ca/news/world"),
#'     url_id = c("cnn1","foxnews1","cbc1"),
#'     text = c("Instagram has a faster chance of reaching me than CNN",
#'              "I would appear on Fox News more easily than I would NPR.",
#'              "CBC has a very important mandate to bind Canada together
#'              in both official languages, tell local stories, and make
#'              sure we have a sense of our strength, our culture, our stories."))
#'
#'  bow(df)
#'  "-------------------------------  ----------  ------------------------------
#'              url                   url_id             text
#'  -------------------------------  ----------  ------------------------------
#'   https://www.cnn.com/world         cnn1       Instagram has a faster ...
#'   https://www.foxnews.com/world     foxnew1    I would appear on Fox ...
#'   https://www.cbc.ca/news/world     cbc1       CBC has a very important ...
#'
#'   -------- ------ -------     ------ --------- ------
#'   appear   bind   canada  ...  tell	 twitter   want
#'   -------- ------ -------     ------ --------- ------
#'    0        0       0    ...     0       1        1
#'    1        0       0    ...     0       0        0
#'    0        1       1    ...     1       0        0"

bow <- function(df) {
  if(tibble::is_tibble(df)){
    df <- as.data.frame(df)
  }
  words <- superml::CountVectorizer$new()
  words_matrix <- words$fit_transform(df[ , ncol(df)])
  new_order <- sort(colnames(words_matrix))
  df_temp <- words_matrix[, new_order]
  df_bow <- cbind(df[, 1:ncol(df)],df_temp)
  df_bow
}

