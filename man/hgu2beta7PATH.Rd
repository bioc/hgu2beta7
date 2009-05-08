\name{hgu2beta7PATH}
\alias{hgu2beta7PATH}
\title{Mappings between probe identifiers and KEGG pathway identifiers}
\description{
  KEGG (Kyoto Encyclopedia of Genes and Genomes) maintains pathway data
  for various organisms. hgu2beta7PATH maps probe identifiers to the
  identifiers used by KEGG for pathways in which the genes represented
  by the probe identifiers are involved
}
\details{
  Each KEGG pathway has a name and id. Pathway name for a given pathway
  id can be obtained using the KEGG data package that can either be
  built using AnnBuilder or downloaded from Bioconductor
  \url{http://www.bioconductor.org}.

  Graphic presentations of pathways are searchable at
  \url{http://www.genome.ad.jp/kegg/pathway.html} by using pathway ids as
  keys.   

  Mappings were based on data provided by:

  KEGG:\url{ftp://ftp.genome.ad.jp/pub/kegg/pathways}. Built: Release 33.0
  (January 2005) 

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built:
  February 16, 2005 
}

\references{
  \url{http://www.genome.ad.jp/kegg/}
}

\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7PATH)
    # Remove probe ids that do not map to any pathway id
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
        # The pathway ids for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    } 
}
\keyword{datasets}

