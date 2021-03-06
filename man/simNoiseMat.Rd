% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simNoiseMat.R
\name{simNoiseMat}
\alias{simNoiseMat}
\title{Simulate a matrix composed of rows with different noise types.}
\usage{
simNoiseMat(samples = 100, noisetypes = list(white = 2, brown = 3, pink =
  5), pink.type = "voss")
}
\arguments{
\item{samples}{the number of samples to be drawn}

\item{noisetypes}{a list specifying the number of rows to be generated for each noise type}

\item{pink.type}{the algorithm to generate pink noise, options: white and voss}
}
\value{
a matrix where each row represents a distribution following a specified noise type
}
\description{
White noise is generated with rnorm and brown noise with cumsum(rnorm).
Pink noise is generated by default with the voss1d function from the Voss package.
Alternatively, pink noise can be generated by filtering the power spectrum of
white noise, which is however less reliable.
}
\examples{
# plot the power spectrum of pink noise
powerspec(simNoiseMat(samples=100,noisetypes=list(white=0,brown=0,pink=1))[1,],plot.log=TRUE)
# plot a matrix with mixed noise types
mat=simNoiseMat(samples=300,noisetypes=list(white=0,brown=20,pink=30))
tsplot(mat,type="l", header="simulated noise")
# Taylor law of brown noise
taylor(simNoiseMat(samples=300,noisetypes=list(white=0,brown=50,pink=0)),type="taylor")
}

