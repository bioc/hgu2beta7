\name{hgu2beta7SUMFUNC}
\alias{hgu2beta7SUMFUNC}
\title{Mappings between probe identifiers and summaries of the functions
  of genes represented by the probe identifiers}
\description{
  hgu2beta7SUMFUNC maps probe identifiers to brief summaries of
  functions of the products of genes represented by the probe identifiers  
}
\details{
  Annotation of genes by brief summaries of functions of the products of
  genes represented by the probe identifiers were supported by earlier
  builds of the LocusLink source data but not so lately. This annotation
  may have to be dropped in the future.
  
  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
   \url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7SUMFUNC)
    if(length(xx) > 0){
        # The function summaries for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}

\keyword{datasets}

