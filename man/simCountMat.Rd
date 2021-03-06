% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simCountMat.R
\name{simCountMat}
\alias{simCountMat}
\title{Simulate a count matrix}
\usage{
simCountMat(N, samples = 100, counts = 1000, distrib = "dm",
  maxcount = 100, mode = 1, k = 0.5, theta = 0.002, norm = F,
  shuffle.samples = F)
}
\arguments{
\item{N}{the number of taxa}

\item{samples}{the number of columns in the matrix}

\item{counts}{either the total number of counts in each sample or a vector specifying the count number in each sample}

\item{distrib}{"dm" for Dirichlet-Multinomial distribution or "unif" for uniform distribution}

\item{maxcount}{maximal count number for any taxon (only for uniform distribution)}

\item{mode}{how the taxon probability vector for the DM distribution is to be generated (1=perfectly even, 2=sampled from uniform distribution, 3=dominant taxon has probability of 0.95 and all others have equal probability, 4=probabilities are sampled from a Poisson distribution with lambda set to 0.5, 5=using bstick function from vegan, 6=using geometric series with parameter k)}

\item{k}{evenness parameter of mode 6}

\item{theta}{overdispersion parameter of the DM distribution}

\item{norm}{normalize matrix column-wise, such that the entries in each column add to one}

\item{shuffle.samples}{shuffle each sample}
}
\value{
a count matrix or relative abundance matrix
}
\description{
Simulate the output of a sequencing experiment, with taxa as rows and samples as columns.
}
\examples{
tsplot(simCountMat(taxa=10,samples=50,mode=6,k=0.5),type="l", header="Dirichlet-Multinomial")
}
\seealso{
\code{\link{generateAbundances}}
}

