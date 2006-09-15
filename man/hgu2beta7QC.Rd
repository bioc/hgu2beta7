\name{hgu2beta7QC} 
\alias{hgu2beta7QC}
\alias{hgu2beta7MAPCOUNTS}
\title{Quality control information for hgu2beta7}
\description{
  A data file containing statistics for all the data files in this
  package. The data are used for quality control purpose 
}
\details{
  This file contains quality control information that can be displayed
  by typing hgu2beta7() after loading the package using
  library(hgu2beta7). The follow items are included: 

  Date built: Date when the package was built.

  Number of probes: total number of probes included

  Probe number missmatch: if the total number of probes of any of the
  data file is different from a base file used to check the data files
  the name of the data file will be listed 

  Probe missmatch: if any of probes in a data file missmatched that of
  the base file,  the name of the data file will be listed 

  Mappings found for probe based files: number of mappings obtained for
  the total number of probes 

 Mappings found for non-probe based files: total number of mappings obtained
}
\keyword{datasets}

