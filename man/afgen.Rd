\name{afgen}
\alias{afgen}
\title{NN and Anscombe samples}
\description{Samples binomial Fisz and Anscombe transformed random variables on a grid of binomial probabilities.  
}
\usage{
afgen(xgrid = seq(0, 1, length = 21), ygrid = seq(0, 1, length = 21), samples = 1000, 
binsize = 32)
}
\arguments{
  \item{xgrid}{vector of x co-ordinate probabilities.}
  \item{ygrid}{vector of x co-ordinate probabilities.}
  \item{samples}{the number of samples to draw from each random variable.}
  \item{binsize}{the binomial size of the binomial random variables.}
}
\details{The function produces sampled values from the random variable:\cr\cr 
\eqn{\zeta(X_1,X_2)=\frac{X_1-X_2}{ \sqrt{ (X_1+X_2)(2*binsize-X_1-X_2)/ 2*binsize }} 
},\cr\cr 
where \eqn{X_i} are Bin(binsize,\eqn{p_i}) random variables, for all combinations of values of \eqn{p_1} in xgrid and \eqn{p_2} in ygrid.  
For Anscombe's transformation, 
\eqn{A=sin^{-1}\sqrt{(x+3/8)/(binsize+3/4)}}, the values correspond to the random variable with the larger binomial probability.
}
\references{Anscombe, F.J. (1948) The transformation of poisson, binomial and negative binomial Data, \emph{Biometrika},\bold{35}, 246--254.\cr
      Nunes, M. and Nason, G.P. (2009) A multiscale variance stabilization for binomial sequence proportion estimation. \emph{Statistica Sinica}, \bold{19}
       (1491--1510).
      }
\value{
  \item{a}{an array of dimensions \code{length(xgrid)xlength(ygrid)xsamples} of values of binomial Haar-Fisz random variable.}
  \item{b}{an array of dimensions \code{length(xgrid)xlength(ygrid)xsamples} of values of A.}
}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\seealso{\code{\link{ansc}}}
\examples{
##
varvalues<-afgen(xgrid=seq(0,1,length=21),ygrid=seq(0,1,length=21),samples=1000,binsize=32)

##creates 1000 samples of the two random variables zeta_B and A for each point 
##(x,y) for x and y regularly-spaced probability vectors of length 21.
##
}
\keyword{datagen}% at least one, from doc/KEYWORDS
