\name{hgu2beta7GO}
\alias{hgu2beta7GO}
\title{Mappings between probe identifiers and Gene Ontology information}
\description{
  The Gene Ontology Consortium maintains a controlled vocabulary of
  defined terms to describe gene products. hgu2beta7GO maps probe
  identifiers to Gene Ontology information including the ids, evidence
  codes, and ontology categories of the terms for the genes represented by
  the probe ids. 
}
\details{
  Each probe id is mapped to a list containing one (mapped to none or
  one set of GO information) or more (mapped to more than one sets of GO
  information) elements. When a probe id is mapped to at lest one set of
  GO information, each element of the list contains a sub list of three
  elements named "GOID", "Ontology", and "Evidence". The value for element
  "GOID" gives the Gene Ontology identifier the key probe id corresponds
  to. The value for element "Ontology" can be an abbreviation of MF
  (mocular function), BP (biological process), or CC (cellular
  component) for the GO ontology category the GO id belongs to. The
  value for element "Evidence" contains an evidence code indicating what
  kind of evidence is found to support the association of the GO id to
  the gene represented by the key probe id.

  The evidence codes in use include:
  
  IMP: inferred from mutant phenotype  

  IGI: inferred from genetic interaction

  IPI: inferred from physical interaction  

  ISS: inferred from sequence similarity 

  IDA: inferred from direct assay  

  IEP: inferred from expression pattern  

  IEA: inferred from electronic annotation  

  TAS: traceable author statement  

  NAS: non-traceable author statement  

  ND: no biological data available  

  IC: inferred by curator
  
  Mappings between probe ids and GO information were obtained through
  their mappings to LocusLink ids. NAs are assigned to probe identifiers
  that can not be mapped to any Gene Ontology information. Mappings
  between Gene Ontology ids an Gene Ontology terms and other information
  are available in a separate data package named GO.
  
  Mappings were based on data provided by:
  
  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Gene Ontology:\url{http://www.godatabase.org/dev/database/archive/daily/go_daily-termdb.rdf-xml.gz}. Built: http://www.godatabase.org/dev/database/archive/daily/go_daily-termdb.rdf-xml.gz
  
  Package built Wed Feb 16 23:32:20 2005
}

\examples{
    # Convert to a list
    xx <- as.list(hgu2beta7GO)
    # Remove all the NAs
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
            # Try the firest one
            got <- xx[[1]]           
            got[[1]][["GOID"]]
            got[[1]][["Ontology"]]
            got[[1]][["Evidence"]]

    }
}
\keyword{datasets}

