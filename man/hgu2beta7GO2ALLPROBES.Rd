\name{hgu2beta7GO2ALLPROBES}
\alias{hgu2beta7GO2ALLPROBES}
\title{Mappings between GO identifiers and all the probe idifiers
  representing genes associated with the GO ids}
\description{
  The Gene Ontology (GO) Consortium maintains a controlled vocabulary of
  defined terms to describe gene products. Each of the terms is assigned
  a GO id that can be associated with a group of genes directly or indirectly
  through the children GO ids of the GO id. hgu2beta7GO2ALLPROBES maps
  GO ids to genes (represented by probe identifiers) that are directly
  or indirectly mapped to the GO ids by traversing the GO tree. 
}
\details{
  GO terminologies are presented as a directed acyclic graph with root
  nodes having more general terms than their children nodes. Therefore, a
  GO id can be mapped to genes corresponding to the term of that
  particular GO id as well as genes corresponding to the terms of all the
  children GO ids.

  hgu2beta7GO2ALLPROBES maps a GO id to all the probe ids representing
  genes mapped by traversing the GO tree. The mapped probe ids are named
  vectors. Names of the vectors are the evidence codes indicating what
  kind of evidence is found to support the association between GO ids
  and genes.

  The evidence codes in use include: 
  
  IMP - inferred from mutant phenotype  

  IGI - inferred from genetic interaction

  IPI - inferred from physical interaction  

  ISS - inferred from sequence similarity  

  IDA - inferred from direct assay  

  IEP - inferred from expression pattern  

  IEA - inferred from electronic annotation  

  TAS - traceable author statement  

  NAS - non-traceable author statement  

  ND - no biological data available  

  IC - inferred by curator

  A GO id may be mapped to the same probe id more than once but the
  evidence code can be different. Mappings between Gene Ontology ids and
  Gene Ontology terms and other information are available in a separate
  data package named GO.  
  
  Mappings were based on data provided:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built Wed Feb 16 23:32:20 2005
}
\references{
\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}
}
\examples{
    # Convert to a list
    xx <- as.list(hgu2beta7GO2ALLPROBES)
    if(length(xx) > 0){
        # Gets the probe ids for the top 2nd and 3nd GO ids
        goids <- xx[2:3]
        # Gets all the probe ids for the first element of goids
        goids[[1]]
        # Evidence code for the mappings
        names(goids[[1]])
    }
}
\keyword{datasets}

