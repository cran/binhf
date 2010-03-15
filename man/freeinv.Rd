\name{freeinv}
\alias{freeinv}
\title{Inverse Freeman-Tukey transform}
\description{Does the inverse of the Freeman-Tukey inverse sine transformation on a vector input.
}
\usage{
freeinv(y, n)
}
\arguments{
  \item{y}{input data vector.}
  \item{n}{the binomial size corresponding to the observed binomial values.}
}
\value{
   \item{a}{vector of transformed data corresponding to \env{y}.}
 
}
\references{
Freeman, M. F. and Tukey, J. W. (1950) Transformations related to the angular
and the square root. \emph{Ann. Math. Stat.}, \bold{21}, 607--611.
}

\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\seealso{\code{\link{free}}}
\examples{

#generate binomial data:

x<-rbinom(100,10,.5)

y<-free(x,10)

x1<-freeinv(y,10)

#this should be the original data.

}
\keyword{manip}% at least one, from doc/KEYWORDS

