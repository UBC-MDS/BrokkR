
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BrokkR

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-MDS/BrokkR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/UBC-MDS/BrokkR/actions/workflows/R-CMD-check.yaml)
curl -Os <https://uploader.codecov.io/latest/macos/codecov> chmod +x
codecov ./codecov <!-- badges: end -->

This package allows users to provide a list of URLs for webpages of
interest and creates a dataframe with Bag of Words representation that
can then later be fed into a machine learning model of their choice.
Users also have the option to produce a dataframe with just the raw text
of their target webpages to apply the text representation of their
choice instead.

## Why `BrokkR`

There are some libraries and packages that can facilitate this job, from
scraping text from a URL to returning it to a bag of words (BOW).
However, to the extent of our knowledge, there is no sufficiently handy
and straightforward package for this purpose. This package is a tailored
combination of `Rvest` and `CountVectorizer`.
[`Rvest`](https://www.rdocumentation.org/packages/rvest/versions/1.0.3)
widely used to pull different sources of data from HTML and XML pages,
and
[`CountVectorizer`](https://www.rdocumentation.org/packages/superml/versions/0.4.0/topics/CountVectorizer)
is a well-known package to convert a collection of texts to a matrix of
token counts.

## Features

The BrokkR package includes the following four functions:

- `create_id()`: Takes a character vector of webpage urls as an input
  and returns a character vector of unique identifiers for each webpage
  based on their url. The identifier is composed of the main webpage
  name and if multiple urls share the same parent webpage name, then the
  sequential ids are appended by a number.
- `brok_scrape()` : Takes a vector of urls and using Rvest extracts the
  raw text from each and creates a list as an output. Polite was used to
  avoid being flagged as malicious during the scraping process.
- `duster()`: Takes a vector of urls and uses the above two functions to
  create a tibble with the webpage identifiers as a index, the raw url,
  and the raw text from the webpage with extra line breaks removed.
- `bow()`: Takes a string text as an input and returns the vector of
  unique words it contains.

## Installation

You can install the development version of BrokkR from
[GitHub](https://github.com/UBC-MDS/BrokkR) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/BrokkR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#library(BrokkR)
## basic example code
```
