\name{hgu2beta7SYMBOL}
\alias{hgu2beta7SYMBOL}
\title{Mappings between probe identifiers and gene symbols}
\description{
  When new genes are reported, gene symbols that are (hopefully) validated
  by an appropriate nomenclature committee are used to label the genes.
  hgu2beta7SYMBOL maps probe identifiers to the symbols used to report
  genes represented by the probe identifiers  
}
\details{
  hgu2beta7SYMBOL maps probe ids to either the official (validated by a
  nomenclature committee) and preferred names (interim selected for
  display). Efforts are bing made to differentiate the two. 

  Symbols typically consist of 3 letters that define either a single
  gene (ABC) or multiple genes (ABC1, ABC2, ABC3). Gene symbols can be
  used as key words to query public databases such as LocusLink. 
  
  Mappings were based on data provided by:
  
  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built Wed Feb 16 23:32:20 2005
}
\references{
  \url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7SYMBOL)
    if(length(xx) > 0){
        # The symbols for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}

\keyword{datasets}

