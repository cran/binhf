\name{statgen}
\alias{statgen}
\title{Statistics generator}
\description{
This function generates useful simulation statistics for NN and Anscombe transforms. 
}
\usage{
statgen(valuelist, xgrid = seq(0, 1, length = 21), ygrid = seq(0, 1, length = 21), 
binsize = 32, plot.m = FALSE, plot.v = FALSE, plot.ks = FALSE, ptype = "persp")
}
\arguments{
  \item{valuelist}{a two component list as produced by \env{afgen}.}
  \item{xgrid}{a vector of x coordinate binomial proportions.}
  \item{ygrid}{a vector of x coordinate binomial proportions.}
  \item{binsize}{binomial size to use in simulations.}
  \item{plot.m}{A boolean variable, indicating whether mean simulation plots should be outputted.}
  \item{plot.v}{A boolean variable, indicating whether variance simulation plots should be outputted.}
  \item{plot.ks}{A boolean variable, indicating whether Kolmogorov-Smirnov simulation plots should be outputted.}
  \item{ptype}{where appropriate, the type of plots to be produced.  Possible values are "persp" for 3D persective plots or "contour" for corresponding contour plots.}
}
\details{
The function does several sample variance plots, Kolmogorov-Smirnov and mean plots for the data in the variable \env{valuelist} 
(for both Anscombe and binomial Haar-Fisz transforms).}

\value{
  \item{afm}{matrix of sample mean values for binomial Haar-Fisz samples.}
  \item{anm}{matrix of sample mean values for Anscombe samples.}
  \item{afv}{matrix of sample variance values for binomial Haar-Fisz samples.}
  \item{anv}{matrix of sample variance values for Anscombe samples.}
  \item{afk}{matrix of Kolmogorov-Smirnof statistics for binomial Haar-Fisz samples.}
  \item{ank}{matrix of Kolmogorov-Smirnof statistics for Anscombe samples.}
}
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ }

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{afgen}}}
\examples{
a<-afgen(xgrid = seq(0, 1, length = 21), ygrid = seq(0, 1, length = 21), 
samples = 1000, binsize = 32)

b<-statgen(a,xgrid=seq(0,1,length=21),ygrid=seq(0,1,length=21),binsize=32,plot.m=FALSE,
plot.v=TRUE,plot.ks=FALSE,ptype="persp")

}
\keyword{manip}% at least one, from doc/KEYWORDS
