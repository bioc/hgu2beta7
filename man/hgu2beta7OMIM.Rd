\name{hgu2beta7OMIM}
\alias{hgu2beta7OMIM}
\title{Mappings between probe identifiers and Mendelian Inheritance in
  Man (MIM) identifiers}
\description{
  The OMIM database (Online Mendelian Inheritance in Man)
  \url{http://www3.ncbi.nlm.nih.gov/entrez/query.fcgi?db=OMIM} contains
  data for human genes and genetic disorders. hgu2beta7OMIM maps probe
  identifiers to MIM numbers that can be used to search the database 
}
\details{
  OMIM is based upon the book Mendelian Inheritance in Man
  (V. A. McKusick) and focuses primarily on inherited or heritable
  genetic diseases. It contains textual information, pictures, and reference
  information that can be searched using various terms, among which the
  MIM number is one. 
  
  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
  \url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7OMIM)
    # Remove probe ids that do not map to any MIM number
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # The MIM numbers for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}

\keyword{datasets}

