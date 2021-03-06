% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test_segregation.R
\name{test_segregation_of_a_marker}
\alias{test_segregation_of_a_marker}
\title{test_segregation_of_a_marker}
\usage{
test_segregation_of_a_marker(x, marker)
}
\arguments{
\item{x}{an object of class bc.onemap, f2.onemap, riself.onemap,
risib.onemap or outcross, with data and additional information.}

\item{marker}{the marker which will be tested for its segregation.}
}
\value{
a list with the H0 hypothesis being tested, the chi-square statistics,
the associated p-values, and the \% of individuals genotyped.


##'@examples
data(fake.bc.onemap) # Loads a fake backcross dataset installed with onemap
test_segregation_of_a_marker(fake.bc.onemap,1)

data(example.out) # Loads a fake outcross dataset installed with onemap
test_segregation_of_a_marker(example.out,1)
}
\description{
Applies the chi-square test to check if markers are following the
expected segregation pattern, i. e., 1:1:1:1 (A), 1:2:1 (B), 3:1 (C) and 1:1 (D)
according to OneMap's notation. It does not use Yate's correction.
}
\details{
First, the function select the correct segregation pattern, then it
defines the H0 hypothesis, and then tests it, together with percentage of
missing data.
}

