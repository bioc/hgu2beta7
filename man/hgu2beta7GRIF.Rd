\name{hgu2beta7GRIF}
\alias{hgu2beta7GRIF}
\title{Mappings between probe identifiers and the PubMed identifiers for
  the publication where functional annotation of genes corresponding to
  the probe ids were made}
\description{
  NCBI
  \url{http://www.ncbi.nlm.nih.gov/projects/GeneRIF/GeneRIFhelp.html}
  allows users to add functional annotation of genes by providing a
  PubMed identifier for the publication where the annotation was initially
  made and a concise phrase describing the function. hgu2beta7GRIF maps
  probe identifiers to the PubMed identifiers for the publication
  reporting the functions of genes corresponding to the probe identifiers
}
\details{
  Probe ids are only mapped to the PubMed ids. Efforts are being made to
  also include the concise phrase describing the function of a gene.  
  
  Mappings were based on data provided by: 

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built: Wed Feb 16 23:32:20 2005
}
\references{
\url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7GRIF)
    # Remove probe ids that do not map to any PubMed id
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # The unique PubMed ids for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}
\keyword{datasets}

