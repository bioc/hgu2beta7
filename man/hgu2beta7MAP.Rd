\name{hgu2beta7MAP}
\alias{hgu2beta7MAP}
\title{Mappings between probe identifiers and cytogenetic maps/bands}
\description{
  When viewed using a microscope and special stains a chromosome is
  divided into regions, or cytogenetic bands, of transverse alternating
  light and dark or fluorescent and nonfluorescent bands. hgu2beta7MAP
  maps probe identifiers to the labels of cytogenetic bands within
  chromosomes where genes represented by the probe ids are located 
}
\details{
  Cytogenetic bands for most higher organisms are labeled p1, p2, p3,
  q1, q2, q3 (p and q are the p and q arms), etc., counting from the
  centromere out toward the telomeres. At higher resolutions, sub-bands
  can be seen within the bands. The sub-bands are also numbered from the
  centromere out toward the telomere. Thus, a label of 7q31.2 indicates
  that the band is on chromosome 7, q arm, band 3, sub-band 1, and
  sub-sub-band 2.   

  A given probe id may be mapped to one or more cytogenetic bands
  depending on whether genes represented by probe ids have only one or
  more chromosomal locations. Different genes may also be mapped to the
  same cytogenetic bands.

  The physical location of each band on a chromosome can be obtained
  from another environment named "organism"CYTOLOC in a separate data
  package for human(humanCHRLOC), mouse(mouseCHRLOC), and rat(ratCHRLOC).  
  
  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
  \url{http://www.ncbi.nlm.nih.gov}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7MAP)
    # Remove probe ids that do not map to any cytoband
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # The cytobands for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}
\keyword{datasets}

