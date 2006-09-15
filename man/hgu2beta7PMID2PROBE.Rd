\name{hgu2beta7PMID2PROBE}
\alias{hgu2beta7PMID2PROBE}
\title{Mappings between PubMed identifiers and probe identifiers}
\description{
  PubMed \url{http://www.ncbi.nlm.nih.gov/PubMed/} includes over 14
  million citations for biomedical articles back to the 1950's. Each
  article has a unique PubMed identifier. hgu2beta7PMID2PROBE maps
  PubMed identifiers to probe identifiers representing genes cited by
  the publications identified by the PubMed identifiers  
}
\details{
  Titles, abstracts, and possibly full texts of articles can be obtained
  from PubMed by providing a valid PubMed id. The pubmed function of
  annotate can also be used for the same purpose
  
  Mappings were based on data provided by:
  
  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005 
  
  Package built Wed Feb 16 23:32:20 2005
}

\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7PMID2PROBE)
    if(length(xx) > 0){
        # The probe ids for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
        if(interactive() && require(annotate)){
            # Gets article information as XML files for a PubMed id
            xmls <- pubmed(names(xx)[1], disp = "data")
            # Views article information using a browser
            pubmed(names(xx)[1], disp = "browser")
        }
    }
}

\keyword{datasets}

