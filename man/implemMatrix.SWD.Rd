% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/designMatrix.R
\name{implemMatrix.SWD}
\alias{implemMatrix.SWD}
\title{Design matrix for SWD model under a grade of intervention implementation pattern}
\usage{
implemMatrix.SWD(nC, nT, nSw, pattern)
}
\arguments{
\item{nC}{Number of clusters}

\item{nT}{Number of timepoint}

\item{nSw}{number of clusters switches from control to treatment at each timepoint}

\item{pattern}{a vector for grade of intervention implementation pattern, which gives the derivation from 100 percent effectiveness over time}
}
\value{
Design matrix for SWD model under a grade of intervention implementation pattern
}
\description{
Creates a implementation matrix for a given stepped wedge design and grade of intervention implementation pattern
}
\examples{

implemMatrix.SWD(5,6,1, c(seq(0.4,1,0.2),1))

K<-6  #measurement (or timepoints)
I<-10 #Cluster
implemMatrix.SWD(nC=I, nT=K, nSw=2, pattern=c(seq(0.4,1,0.2),1))
}

