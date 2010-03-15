\name{ansc}
\alias{ansc}
\title{Anscombe transformation}
\description{Does Anscombe's inverse sine transformation on a vector input.
}
\usage{
ansc(x, binsize)
}
\arguments{
  \item{x}{input data vector}
  \item{binsize}{the binomial size corresponding to the observed binomial values.}
}
\value{
   \item{y}{vector of transformed data corresponding to \env{x}.}
 
}
\details{Performs the Anscombe calculation: \eqn{A=sin^{-1}\sqrt{(x+3/8)/(binsize+3/4)}}.}
\references{
Anscombe, F.J. (1948) The transformation of poisson, binomial and negative binomial data.  \emph{Biometrika}, \bold{35}, 246-254.
}

\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\seealso{\code{\link{afgen}}, \code{\link{hfdenoise}}, \code{\link{hfdenoise.wav}}, \code{link{invansc}}}
\examples{

#generate binomial data:

x<-rbinom(100,10,.5)

y<-ansc(x,10)

#this is now the transformed data.

}
\keyword{manip}% at least one, from doc/KEYWORDS

