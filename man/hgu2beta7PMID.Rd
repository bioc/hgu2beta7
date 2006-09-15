\name{hgu2beta7PMID}
\alias{hgu2beta7PMID}
\title{Mappings between probe identifiers and PubMed identifiers}
\description{
  PubMed \url{http://www.ncbi.nlm.nih.gov/PubMed/} includes over 14
  million citations for biomedical articles back to the 1950's. Each
  article has a unique PubMed identifier. hgu2beta7PMID maps probe
  identifiers to PubMed identifier for publications that cited the genes
  represented by the probe identifiers 
}
\details{
  Titles, abstracts, and possibly full texts of articles can be obtained
  from PubMed by providing a valid PubMed id. The pubmed function of
  annotate can also be used for the same purpose.

  Mappings were based on data provided by:

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005

  Package built Wed Feb 16 23:32:20 2005
}
\references{
  \url{http://www.ncbi.nlm.nih.gov/LocusLink}
}
\examples{
    # Convert the environment to a list
    xx <- as.list(hgu2beta7PMID)
    if(length(xx) > 0){
        # The probe ids for the first two elements of XX
        xx[1:2]
        # Get the first one
        xx[[1]]
        if(interactive() && !is.null(xx[[1]]) && !is.na(xx[[1]])
           && require(annotate)){
            # Gets article information as XML files
            xmls <- pubmed(xx[[1]], disp = "data")
            # Views article information using a browser
            pubmed(xx[[1]], disp = "browser")
        }
    }
}
\keyword{datasets}

