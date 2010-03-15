\name{hf.inv2}
\alias{hf.inv2}
\title{Haar-NN inverse transform}
\description{
Inverse Haar-NN transform for binomial random variables ("in-place").
}
\usage{
hf.inv2(data, binsize = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{data vector of binomial observations, of length a power of two.}
  \item{binsize}{the binomial size corresponding to \env{x}.}
}
\details{
The procedure performs the inverse "in-place" Haar-NN wavelet transform on the data \env{x}.
}
%\value{
%  \item{l}{a list of two components \env{transformed}: transformed observations corresponding to \env{x} and \env{cnew}: scaling coefficient vector used in Fisz modification.  This needs to be passed on to \env{invbinhf.wd}. }
%}
\references{Nunes, M.A. and Nason, G.P. (2009)  A Multiscale Variance Stabilization for binomial sequence proportion estimation, 
\emph{Statistica Sinica},\bold{19} (4), 1491--1510.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{This function requires the package wavethresh.}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{invbinhf.wd}}}
%\examples{
%x<-rbinom(256,32,.35)
%bb<-binhf.wd(x,binsize=32)
%y<-invbinhf.wd(x,32)
%}
\keyword{manip}% at least one, from doc/KEYWORDS

