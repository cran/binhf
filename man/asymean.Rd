\name{asymean}
\alias{asymean}
\title{Asymptotic mean calculation}
\description{This function gives values for the asymptotic mean of the new binomial Fisz random variable for a grid of bivariate proportion values.
}
\usage{
asymean(xgrid = seq(0, 1, length = 21), ygrid = seq(0, 1, length = 21), binsize = 32)
}
\arguments{
  \item{xgrid}{vector of x co-ordinate probabilities.}
  \item{ygrid}{vector of y co-ordinate probabilities.}
  \item{binsize}{the binomial size of the binomial random variables.}
}
\details{  See \code{\link{afgen}} for an explanation of the computation.
}
\value{
  \item{zetam1m2}{A matrix of dimension \code{length(xgrid)xlength(ygrid)} of values of the mean.}
}
\references{Fisz, M. (1955), The Limiting Distribution of a Function of Two Independent Random Variables and its Statistical
      Application, \emph{Colloquium Mathematicum}, \bold{3}, 138--146.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\seealso{\code{\link{asyvar}}, \code{\link{afgen}}}
\examples{

means<-asymean(xgrid=seq(0,1,length=21),ygrid=seq(0,1,length=21),binsize=32)

## this produces a 21x21 matrix for an equally-spaced grid of binomial proportions. 
}
\keyword{manip}% at least one, from doc/KEYWORDS

