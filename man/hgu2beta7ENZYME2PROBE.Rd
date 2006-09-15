\name{hgu2beta7ENZYME2PROBE}
\alias{hgu2beta7ENZYME2PROBE}
\title{Mappings between Enzyme Commission numbers and probe identifiers}
\description{
  hgu2beta7ENZYME2PROBE maps Enzyme Commission numbers to probe identifiers
  representing genes whose products exhibit the functions of the enzymes
  labeled by the Commission Numbers
}
\details{
  Enzyme Commission numbers are assigned by the Nomenclature Committee
  of the International Union of Biochemistry and Molecular Biology
  \url{http://www.chem.qmw.ac.uk/iubmb/enzyme/} to allow enzymes to be
  identified. 
  
  An Enzyme Commission number is of the format EC x.y.z.w, where x, y, z,
  and w are numeric numbers. In hgu2beta7ENZYME2PROBE, EC is dropped from the
  Enzyme Commission numbers.

  Enzyme Commission numbers have corresponding names that describe the
  functions of enzymes in such a way that EC x is a more general
  description than EC x.y that in turn is a more general description than
  EC x.y.z. The top level EC numbers and names are listed below:

  EC 1 oxidoreductases
  
  EC 2 transferases

  EC 3 hydrolases

  EC 4 lyases

  EC 5 isomerases

  EC 6 ligases

  The EC name for a given EC number can be viewed at
  \url{http://www.chem.qmul.ac.uk/iupac/jcbn/index.html#6} 
  
  Mappings were based on data provided by:

  KEGG:\url{ftp://ftp.genome.ad.jp/pub/kegg/pathways}. Built: Release 33.0 (January 2005)

  Package built Wed Feb 16 23:32:20 2005
}
\references{
\url{ftp://ftp.genome.ad.jp/pub/kegg/pathways}
}
\examples{
    # Convert to a list
    xx <- as.list(hgu2beta7ENZYME2PROBE)
   if(length(xx) > 0){
       # Gets the probe ids for the first five enzyme
       #commission numbers
       xx[1:5]
       # Get the first one
       xx[[1]]
    }
}
\keyword{datasets}

