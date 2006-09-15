\name{hgu2beta7GENENAME}
\alias{hgu2beta7GENENAME}
\title{Mappings between probe identifiers and the names of genes the
  probe ids correspond to}
\description{
  hgu2beta7GENENAME maps probe identifiers to the names of genes corresponding
  to the probe ids. Gene names are the descriptions used for gene
  reports that have been validated by a nomenclature committee or
  interim selected for display 
}
\details{
  Gene names currently include both the official (validated by a
  nomenclature committee) and preferred names (interim selected for
  display) for genes. Efforts are being made to differentiate the two
  by adding a name to the vector.

  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built Wed Feb 16 23:32:20 2005
}

\examples{
     # Convert to a list
     xx <- as.list(hgu2beta7GENENAME)
     # Remove probes that do not map to any GENENAME
     xx <- xx[!is.na(xx)]
     if(length(xx) > 0){
         # Gets the gene names for the first five probe ids
         xx[1:5]
         # Get the first one
         xx[[1]]
     }
}
\keyword{datasets}

