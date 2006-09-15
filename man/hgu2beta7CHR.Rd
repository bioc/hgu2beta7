\name{hgu2beta7CHR}
\alias{hgu2beta7CHR}
\title{Mappings between probe identifiers and the chromosome numbers the
  genes represented by the probe ids reside}
\description{
  Each chromosome of a given organism is assigned a number or letter
  for labeling purpose. hgu2beta7CHR maps probe ids to the numbers or
  letters labeling chromosomes where the genes corresponding to the
  probe ids reside  
}
\details{
  Since a given gene may be found in more than one chromosomes, each
  probe id is mapped to a character vector of length 1 or greater. Probe
  ids that can not be mapped to any chromosome at the time when the
  package was built are assinged NAs. 
  
  Mappings were based on data provided by:
  
  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built: Wed Feb 16 23:32:20 2005
}

\examples{
        # Convert to a list
        xx <- as.list(hgu2beta7CHR)
        # Remove probe ids that do not map to any CHRLOC
        xx <- xx[!is.na(xx)]
        if(length(xx) > 0){
            # Get the chromosome number for the first five probes
            xx[1:5]
            # Get the first one
            xx[[1]]
        }
}
\keyword{datasets}

