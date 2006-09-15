\name{hgu2beta7ENZYME}
\alias{hgu2beta7ENZYME}
\title{Mappings between probe identifiers and the enzyme commission
  numbers, to which the products of the genes represented by the probe
  ids correspond}
\description{ 
  Genes code for proteins/enzymes that take part in various
  biological processes. hgu2beta7ENZYME maps probe ids to Enzyme
  Commission numbers for the enzymes the genes represented by the probe
  ids code for. Enzyme Commission numbers are assigned by the
  Nomenclature Committee of the International Union of Biochemistry and
  Molecular Biology \url{http://www.chem.qmw.ac.uk/iubmb/enzyme/} to
  allow enzymes to be identified.  
}
\details{
  Each probe id is mapped to one or more Enzyme Commission numbers. An
  Enzyme Commission number is of the format EC x.y.z.w, where x, y, z,
  and w are numeric numbers. In hgu2beta7ENZYME, EC is dropped from the
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

  hgu2beta7ENZYME only provides mappings to EC numbers. The EC name for
  a given EC number can be viewed at
  \url{http://www.chem.qmul.ac.uk/iupac/jcbn/index.html#6} 

  Mappings between probe ids and enzyme ids were obtained using files
  provided by:

  KEGG:\url{ftp://ftp.genome.ad.jp/pub/kegg/pathways}. Built: Release 33.0 (January 2005)

  LocusLink:\url{ftp://ftp.ncbi.nih.gov/refseq/LocusLink/LL_tmpl.gz}. Built: February 16, 2005
  
  Package built Wed Feb 16 23:32:20 2005
}
\references{
\url{ftp://ftp.genome.ad.jp/pub/kegg/pathways}
}
\examples{
        # Convert to a list
        xx <- as.list(hgu2beta7ENZYME)
        # Remove probe ids that do not map to any enzyme EC number
        xx <- xx[!is.na(xx)]
        if(length(xx) > 0){
        # Gets the enzyme commission numbers for the first five
        #probes
        xx[1:5]
        # Get the first one
        xx[[1]]
}
}
\keyword{datasets}

