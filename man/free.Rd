\name{free}
\alias{free}
\title{Freeman-Tukey transform}
\description{Does Freeman-Tukey average inverse sine transformation on a vector input.}
\usage{
free(x, n)
}
\arguments{
  \item{x}{input data vector}
  \item{n}{the binomial size corresponding to the observed binomial values.}
}
\value{
   \item{a}{vector of transformed data corresponding to \env{x}.}
}
\references{
Freeman, M. F. and Tukey, J. W. (1950) Transformations related to the angular and the square root. \emph{Ann. Math. Stat.}, \bold{21}, 607--611. 
}

\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\seealso{\code{\link{freeinv}}}
\examples{

#generate binomial data:

x<-rbinom(100,10,.5)

y<-free(x,10)

#this is now the transformed data.

}
\keyword{manip}% at least one, from doc/KEYWORDS

