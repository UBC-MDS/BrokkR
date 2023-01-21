
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BrokkR

<!-- badges: start -->
<!-- badges: end -->

This package allows users to provide a list of URLs for webpages of
interest and creates a dataframe with Bag of Words representation that
can then later be fed into a machine learning model of their choice.
Users also have the option to produce a dataframe with just the raw text
of their target webpages to apply the text representation of their
choice instead.

# Features
The BrokkR package includes the following four functions:

- `create_id()`: Takes a list of webpage urls formatted as strings as an input and returns a list of unique string identifiers for each webpage based on their url. The identifier is composed of the main webpage name followed by a number.

- `text_from_url()` : Takes a list of urls and using Beautiful Soup extracts the raw text from each and creates a dataframe. By setting the optional argument identifier it can use the function create_id() from this package to add an id column that stores the identifiers for each url.

- `bow()`: Takes a string text as an input and returns the list of unique words it contains.

- `count_words()`: Counts the occurrence of a specific list of words on a series of webpages and produces a Pandas dataframe with the results. The user will provide a list of urls to scrape and a list of target words they are interested in.

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
library(BrokkR)
## basic example code
```
