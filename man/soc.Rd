% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/soc.R
\name{soc}
\alias{soc}
\title{Self-organized critical model}
\usage{
soc(N, I, A, m.vector = runif(N), e.vector = runif(N), tend)
}
\arguments{
\item{N}{number of species}

\item{I}{number of individuals}

\item{A}{interaction matrix}

\item{m.vector}{species-specific immigration probabilities (these also determine initial abundances)}

\item{e.vector}{species-specific extinction probabilities}

\item{tend}{number of time points (i.e. the number of generations)}
}
\value{
a matrix with species abundances as rows and time points as columns
}
\description{
Generate time series with the self-organized criticality (SOC) model based on Sole et al.
}
\references{
Sole et al. 2002 "Self-organized instability in complex ecosystems"
}

