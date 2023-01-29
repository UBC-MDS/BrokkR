test_that("last column of the input data frame should be string", {
  expect_equal(typeof(df[,ncol(df)]), "character")
})

test_that("the row number of both output and input data frames should be the same", {
  expect_equal(nrow(bow(df)), nrow(df))
})

test_that("the first m-1 columns of input and output data frames should be the same", {
  expect_equal(bow(df)[,1:ncol(df)-1] , df[,1:ncol(df)-1])
})

test_that("The output is not as expected!", {
  expect_equal(bow(data.frame(
    url = c("https://www.cnn.com/world",
            "https://www.foxnews.com/world",
            "https://www.cbc.ca/news/world"),
    url_id = c("cnn1","foxnews1","cbc1"),
    text = c("Instagram has a faster chance of reaching me than CNN, and if I really want to know what's going on, I refresh my Twitter feed.",
             "I would appear on Fox News more easily than I would NPR.",
             "CBC has a very important mandate to bind Canada together in both official languages, tell local stories, and make sure we have a sense of our strength, our culture, our stories.")
  )) ,
  data.frame(
    url = c("https://www.cnn.com/world",
            "https://www.foxnews.com/world",
            "https://www.cbc.ca/news/world"),
    url_id = c("cnn1","foxnews1","cbc1"),
    text = c("Instagram has a faster chance of reaching me than CNN, and if I really want to know what's going on, I refresh my Twitter feed.",
             "I would appear on Fox News more easily than I would NPR.",
             "CBC has a very important mandate to bind Canada together in both official languages, tell local stories, and make sure we have a sense of our strength, our culture, our stories."),
    appear = c(0, 1, 0),
    bind = c(0, 0, 1),
    canada = c(0, 0, 1),
    cbc = c(0, 0, 1),
    chance = c(1,0,0),
    cnn = c(1,0,0),
    culture = c(0,0,1),
    easily = c(0,1,0),
    faster = c(1,0,0),
    feed = c(1,0,0),
    fox = c(0,1,0),
    going = c(1,0,0),
    important = c(0,0,1),
    instagram = c(1,0,0),
    know = c(1,0,0),
    languages = c(0,0,1),
    local = c(0,0,1),
    make = c(0,0,1),
    mandate = c(0,0,1),
    news = c(0,1,0),
    npr = c(0,1,0),
    official = c(0,0,1),
    reaching = c(1,0,0),
    really = c(1,0,0),
    refresh = c(1,0,0),
    s = c(1,0,0),
    sense = c(0,0,1),
    stories = c(0,0,2),
    strength = c(0,0,1),
    sure = c(0,0,1),
    tell = c(0,0,1),
    together = c(0,0,1),
    twitter = c(1,0,0),
    want = c(1,0,0)))
})
