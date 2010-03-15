\name{ht.inv}
\alias{ht.inv}
\title{Inverse Haar-NN}
\description{
Inverse Haar transform for binomial random variables.
}
\usage{
ht.inv(data)
}
\arguments{
  \item{data}{transformed (binomial) observations: can be a list output from \code{ht2} or a vector (finest details to coarsest, scaling coefficient).}
% \item{binsize}{the binomial size corresponding to \env{x}.}
}
\details{
The procedure performs the inverse Haar wavelet transform.
}
\value{
  \item{res}{datapoints in the function domain.}
  \item{sm1}{smooth coefficients during the inverse transform.}
}
\references{Nunes, M.A. and Nason, G.P. (2009)  A Multiscale Variance Stabilization for binomial sequence proportion estimation, 
\emph{Statistica Sinica},\bold{19} (4), 1491--1510.}
%\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{This function requires the package wavethresh.}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{ht2}}}
\examples{
x<-rbinom(256,32,.35)
hx<-ht2(x)
y<-ht.inv(x)
}
\keyword{manip}% at least one, from doc/KEYWORDS

