\name{hgu2beta7ACCNUM}
\alias{hgu2beta7ACCNUM}
\title{Mappings between probe identifiers and manufacturer or user provided
  identifiers}  
\description{ 
  hgu2beta7ACCNUM contains mappings between probe ids to identifiers
  provided by a manufacturer or user at the time when hgu2beta7 was
  built. The manufacture or user provided ids were used to link probe
  ids to annotation data available from various public data sources to
  obtain the other annotations contained in hgu2beta7.    
}
\details{
  In order to build an annotate data package, a data file with a column
  for probe ids and another for the matching manufacturer/user provided ids is
  required. This data file is used as the base for mapping probe ids to
  LocusLink identifiers (unique ids used by NCBI
  \url{http://www.ncbi.nlm.nih.gov/LocusLink/} to represent genetic loci
  and link to curated sequence and descriptive information) through the
  manufacturer/user provided ids. The mapped LocusLink ids then serve as
  the point of linkage to other annotation data provided by various
  public data sources.

  hgu2beta7ACCNUM contains the mappings of the base file and the derived
  mappings between probe ids to other annotation data are contained by
  other annotation data files in hgu2beta7. 

  Valid manufacturer/user provided ids currently include GenBank accession
  numbers (identifiers obtained after submitting a sequence to GenBank,
  EMBL or DDBJ), UniGene ids (identifiers used by NCBI to represent
  clusters of sequences of a unique gene), RefSeq ids (identifiers for
  non-redundant sequences curated by NCBI), or IMAGE clone ids
  (identifies given to clones from shared arrayed cDNA libraries by The
  Integrated Molecular Analysis of Gene Expression (IMAGE) Consortium).

  For all the Affymetrix chips, the manufacturer/user provided ids are
  GenBank accession numbers. 

  Package built: Wed Feb 16 23:32:20 2005
}

\examples{
        # Convert to a list
        xx <- as.list(hgu2beta7ACCNUM)
        # Remove probe ids that do not map to any ACCNUM
        xx <- xx[!is.na(xx)]
        if(length(xx) > 0){
        # Get the ACCNUM for the first five probes
        xx[1:5]
        # Get the first one
        xx[[1]]
}
}
\keyword{datasets}

