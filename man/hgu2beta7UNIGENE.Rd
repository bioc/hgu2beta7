\name{hgu2beta7UNIGENE}
\alias{hgu2beta7UNIGENE}
\title{Mappings between probe identifiers and UniGene cluster identifiers}
\description{
  NCBI partitions sequences submitted to GenBank into non-redundant sets
  of clusters. Each cluster contains sequences that represent a unique
  gene and is assigned a unique UniGene id. hgu2beta7UNIGENE maps probe
  identifiers to UniGene cluster identifiers for genes represented by
  the probe ids 
}
\details{
  A UniGene id represents a cluster of sequences of a gene. Using
  UniGene ids one can query the UniGene database for information about
  the sequences or the LocusLink database for information about the
  genes.  
  
  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
  \url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7UNIGENE)
    # Remove probe ids that do no map to any UniGene id
    xx <- xx[!is.null(xx)]
    if(length(xx) > 0){
        # The UniGene ids for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
    }
}

\keyword{datasets}

