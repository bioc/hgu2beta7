\name{hgu2beta7CHRLENGTHS}
\alias{hgu2beta7CHRLENGTHS}
\title{A named vector for the length of each of the chromosomes}
\description{
  hgu2beta7CHRLENGTHS provides the length measured in base pairs for
  each of the chromosomes. 
}
\details{
   This is a named vector with chromosome numbers as the names and the
   corresponding lengths for chromosomes as the values.

   Total lengths of chromosomes were derived by calculating the
   number of base pairs on the sequence string for each chromosome.

   Annotations were derived base on data privided by:

   Golden Path:\url{http://hgdownload.cse.ucsc.edu/goldenPath/hg17/database/}. Built: hg17
}
\examples{
    tt <- hgu2beta7CHRLENGTHS
    # Length of chromosome 1
    tt["1"]
}
\keyword{datasets}

