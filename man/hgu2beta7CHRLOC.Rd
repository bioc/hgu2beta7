\name{hgu2beta7CHRLOC}
\alias{hgu2beta7CHRLOC}
\title{Mappings between probe identifiers and the chromosomal locations
  of the genes represented by the probe identifiers}
\description{
  hgu2beta7CHRLOC maps probe ids to the starting positions of the genes
  represented by the probe ids on chromosomes. The position of a gene is
  measured as the number of base pairs.
}
\details{
  Chromosomal locations on both the sense and antisense strands are
  measured as the number of base pairs from the p (5' end of the sense
  strand) to q (3' end of the sense strand) arms. Chromosomal locations on the
  antisense strand have a leading "-" sign (e. g. -1234567). NAs are
  assigned to probe ids whose chromosomal locations are not known.

  Since a given gene may have more than one chromosomal locations, each
  probe id is mapped to a named vector of length 1 or greater. The names
  of each vector give the chromosome number where the genes reside. When
  a gene can be mapped to a given chromosome but the exact location of
  the gene can not be determined with confidence, "random" is appended to
  the end of the name for a chromosomal location value.     

  Mappings were based on data provided by:

  Golden Path:\url{http://hgdownload.cse.ucsc.edu/goldenPath/hg17/database/}. Built: hg17
  
  Package built Wed Feb 16 23:32:20 2005
}
\examples{
    # Covert to a list
    xx <- as.list(hgu2beta7CHRLOC)
    # Remove probe ids that do not map to any CHRLOC
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # Gets the location for the first five probes
        xx[1:5]
        # Gets the first one
        xx[[1]]
    }
}
\keyword{datasets}

