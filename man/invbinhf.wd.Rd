\name{invbinhf.wd}
\alias{invbinhf.wd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Inverse Haar-NN transform}
\description{
Performs the inverse Haar-NN transform for binomial random variables.
}
\usage{
invbinhf.wd(transformed, binsize = 1,print.info=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{transformed}{a list of two components \env{transformed}: transformed observations of length a power of two and \env{cnew}: scaling coefficient vector used in Fisz modification.}
  \item{binsize}{the binomial size corresponding to the vector transformed.}
  \item{print.info}{boolean to print some information about the coefficients.}
}
\details{
The procedure performs the Haar wavelet transform on the data \env{transformed}, and then modifies the wavelet coefficients by \eqn{d'_jk}=\eqn{d_jk}*sqrt(\eqn{c_jk}(N-\eqn{c_jk})/2N).  The inverse Haar transform is then performed.  This modification will stabilize the variance of the resulting vector.
}
\value{
  \item{estimate}{a vector of transformed observations corresponding to \env{transformed}.}
}
\references{Nunes, M.A. and Nason, G.P. (2009) ``A Multiscale Variance Stabilization for binomial sequence proportion estimation", \emph{Statistica Sinica},\bold{19} (4), 1491--1510.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\note{This function requires the package wavethresh.}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{binhf.wd}}}
\examples{
x<-rbinom(256,32,.35)

y<-binhf.wd(x,32)

x1<-invbinhf.wd(y,32)
}
\keyword{manip}% at least one, from doc/KEYWORDS


