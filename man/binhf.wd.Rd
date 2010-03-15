\name{binhf.wd}
\alias{binhf.wd}
\title{Binomial Haar-Fisz wavelet transform}
\description{
Forward Haar-Fisz transform for binomial random variables.
}
\usage{
binhf.wd(x, binsize = 1,print.info=FALSE)
}
\arguments{
  \item{x}{data vector of binomial observations, of length a power of two.}
  \item{binsize}{the binomial size corresponding to \env{x}.}
  \item{print.info}{boolean to print some information about the coefficients.}
}
\details{
The procedure performs the Haar wavelet transform on the data \env{x}, and then modifies the wavelet coefficients by \eqn{f_jk=d_jk/\sqrt{c_jk*(N-c_jk)/2N}}.  The inverse Haar transform is then performed.  This modification will stabilize the variance of the resulting vector.
}
\value{
  \item{l}{a list of two components \env{transformed}: transformed observations corresponding to \env{x} and \env{cnew}: 
  scaling coefficient vector used in Fisz modification.  This needs to be passed on to \env{invbinhf.wd}. }
}
\references{Nunes, M.A. and Nason, G.P. (2009) A Multiscale Variance Stabilization for binomial sequence proportion estimation, \emph{Statistica Sinica}, 
\bold{19}(4), 1491-1510.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\seealso{\code{\link{invbinhf.wd}}}
\examples{
x<-rbinom(256,32,.35)

y<-binhf.wd(x,32)
}
\keyword{manip}% at least one, from doc/KEYWORDS

