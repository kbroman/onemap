% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/defunct.R
\name{def.rf.3pts}
\alias{def.rf.3pts}
\title{Three-point analysis of genetic markers}
\usage{
def.rf.3pts(w, mrk1name = NULL, mrk2name = NULL, mrk3name = NULL,
  LOD = 5, max.rf = 0.35, max.nolink = 0.55)
}
\arguments{
\item{w}{an object of class \code{outcross}.}

\item{mrk1name}{a character string indicating the name of the first marker,
corresponding to any marker in the input file stored in object \code{w}.}

\item{mrk2name}{a character string indicating the name of the second
marker.}

\item{mrk3name}{a character string indicating the name of the third marker.}

\item{LOD}{minimum LOD Score to declare linkage (defaults to \code{5}).}

\item{max.rf}{maximum recombination fraction between \emph{adjacent}
markers to declare linkage (defaults to \code{0.35}).}

\item{max.nolink}{maximum recombination fraction between markers on the
\emph{edge} of the triplet to declare linkage (defaults to \code{0.55}).}
}
\value{
An object of class \code{rf.3pts}, which is a list containing the
following components: \item{LOD}{minimum LOD Score to declare linkage.}
\item{max.rf}{maximum recombination fraction between \emph{adjacent}
markers to declare linkage.} \item{max.nolink}{maximum recombination
fraction between markers on the \emph{edge} of the triplet to declare
linkage.} \item{marnames}{names of the three markers.} \item{recomb}{a
vector with the three-point estimates of recombination fraction between
markers \code{mrk1name - mrk2name} and \code{mrk2name - mrk3name}, under
the most probable assignment.} \item{phase}{a character string indicating
the most probable assignment (linkage phases) for the three markers.}
\item{analysis}{complete results of the three-point analysis for the
triplet of markers.} \item{goodness}{a vector with character strings
indicating the \dQuote{goodness} of each assignment, i.e., if the LOD Score
and the estimates of recombination fraction are consistent with the
criteria defined. Possible values are: \code{"****"} if the test is
significant, the estimates are below the thresholds and the order seems to
be right; \code{"*"} if the test is significant, but some estimates are
above the thresholds and/or the order seems to be wrong; \code{"-"} if the
test is not significant or all estimates are above the thresholds.}
\item{flag}{a number indicating if there is more than one equally probable
assignment for the triplet of markers. Possible values are: \code{1} if
positive, \code{0} if negative and \code{NA} if linkage is not
significant.}
}
\description{
Due to the limitations of the method, this function is defunct and kept
only for historical reasons. Performs the three-point analysis for
outcrosses in the way proposed by \cite{Wu et al. (2002)} for a triplet of
markers in a given order.
}
\details{
The three markers are analyzed in the order they are given as input, i.e.,
\code{mrk1name - mrk2name - mrk3name}.
}
\examples{

\dontrun{
  data(example.out)

  threepts <- def.rf.3pts(example.out,"M1","M2","M14") # correct order
  threepts

  threepts <- def.rf.3pts(example.out,"M1","M14","M2") # wrong order
  threepts
}

}
\author{
Gabriel R A Margarido, \email{gramarga@gmail.com}
}
\references{
Wu, R., Ma, C.-X., Painter, I. and Zeng, Z.-B. (2002)
Simultaneous maximum likelihood estimation of linkage and linkage phases in
outcrossing species. \emph{Theoretical Population Biology} 61: 349-363.
}
\keyword{utilities}

