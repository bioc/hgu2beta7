\name{hgu2beta7LOCUSID}
\alias{hgu2beta7LOCUSID}
\title{Mappings between probe identifiers and LocusLink identifiers}
\description{
  LocusLink identifiers are unique ids used by NCBI
  \url{http://www.ncbi.nlm.nih.gov/LocusLink/} to represent genetic loci
  and link to curated sequence and descriptive
  information. hgu2beta7LOCUSID maps probe identifiers to LocusLink
  identifiers for genes represented by the probe identifiers.
}
\details{
  Mappings of probe ids to LocusLink ids are achieved through the
  linkage between probe ids to manufacturer/user provided ids contained
  in hgu2beta7ACCNUM. LocusLink ids are first mapped to
  manufacturer/user provided ids using file(s) provided by Locuslink and in
  some cases UniGene and other available sources and then linked to
  probe ids based on the mappings between probe ids and
  manufacturer/user provided ids.  

  When a given probe id was mapped to different LocusLink ids by
  different sources, the one agreed by most sources was selected. When no
  agreement was achieved among sources, the one of the smallest numeric
  value was selected. 
  
  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built: Wed Feb 16 23:32:20 2005
}
\references{
\url{http://www.ncbi.nlm.nih.gov}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7LOCUSID)
    # Remove probe ids that do not map to any LOCUSID
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # The LOCUSIDs for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}

\keyword{datasets}

