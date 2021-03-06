% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SamplingDesign.R
\name{sampleData}
\alias{sampleData}
\title{Sampling Response of individuals within a SWD model}
\usage{
sampleData(type, K, J, I, D, A = NULL, V, parameters)
}
\arguments{
\item{type}{of the design is either cross-sectional (cross-sec) or longitudinal (longitudinal)}

\item{K}{number of timepoints or measurments (design parameter)}

\item{J}{number of subjects}

\item{I}{number of clusters (design parameter)}

\item{D}{a complete data design matrix corresponding to the assumed model}

\item{A}{a complete data design matrix corresponding to the true data, if A is null, then A is equal to D}

\item{V}{covariance matrix for the normal distribution}

\item{parameters}{corresponding to the model (regression fixed effects coefficients)}
}
\value{
Data of individuals intensities corresponds to the SWD model and full model parameter information
}
\description{
Sample data (response) for given numbers of individuals by given a model (of a parallel, cross-sectional, stepped wedge design study)
}
\examples{
K<-6  #measurement (or timepoints)
I<-10 #Cluster
J<-2 #number of subjects
X<-designMatrix(nC=I, nT=K, nSw=2)
D<-completeDataDesignMatrix(J, X)
sigma.1<-0.1
sigma.3<-0.9
type<-"cross-sec"
V<-CovMat.Design(K, J, I, sigma.1=sigma.1, sigma.3=sigma.3)
mu.0<-0
theta<-1
betas<-rep(0, K-1)
parameters<-c(mu.0, betas, theta)
sample.data<-sampleData(type = type, K=K,J=J,I=I, D=D, V=V, parameters=parameters)
xtabs(~cluster+measurement, data=sample.data)
}

