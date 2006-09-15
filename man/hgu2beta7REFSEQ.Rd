\name{hgu2beta7REFSEQ}
\alias{hgu2beta7REFSEQ}
\title{Mappings between probe identifiers and RefSeq identifiers}
\description{
  The Reference Sequence (RefSeq) database contains curated
  non-redundant set of sequences for genomic DNA, RNA, and protein 
  for various organisms. hgu2beta7REFSEQ maps probe identifiers to all
  the RefSeq identifiers that are mapped by NCBI to genes represented by
  the probe identifiers 
}
\details{
  RefSeq ids differ in format according to the type of record the ids
  are for as shown below:

  NG\_XXXXX: RefSeq accessions for genomic region (nucleotide) records

  NM\_XXXXX: RefSeq accessions for mRNA records

  NC\_XXXXX: RefSeq accessions for chromosome records

  NP\_XXXXX: RefSeq accessions for protein records

  XR\_XXXXX: RefSeq accessions for model RNAs that are not associated with
  protein products

  XM\_XXXXX: RefSeq accessions for model mRNA records

  XP\_XXXXX: RefSeq accessions for model protein records

  Where XXXXX is a sequence of integers.

  NCBI \url{http://www.ncbi.nlm.nih.gov/RefSeq/} allows users to query
  the RefSeq database using RefSeq ids.

  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
    NCBI \url{http://www.ncbi.nlm.nih.gov} and RefSeQ 
    \url{http://www.ncbi.nlm.nih.gov/RefSeq/} 
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7REFSEQ)
    # Remove probe ids that do not map to any RefSeq
    xx <- xx[!is.na(xx)]
    if(length(xx) > 0){
    # The RefSeq for the first two elements of XX
    xx[1:2]
    # Get the first one
    xx[[1]]
}
}

\keyword{datasets}

