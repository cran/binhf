\name{asyvar}
\alias{asyvar}
\title{Asymptotic variance function}
\description{This function gives values for the asymptotic mean of the new binomial Fisz random variable.
}
\usage{
asyvar(xgrid = seq(0, 1, length = 21), ygrid = seq(0, 1, length = 21))
}
\arguments{
  \item{xgrid}{vector of x co-ordinate probabilities.}
  \item{ygrid}{vector of y co-ordinate probabilities.}
}
\details{Due to the form of the asymptotic variance for equal binomial sizes, this does not need a specification of the binomial size 
\code{binsize} (see \code{\link{asymean}}).
}
\value{
  \item{asyvar}{A matrix of dimension length(xgrid)xlength(ygrid) of values of the variance.}
}
\references{Fisz, M. (1955), The Limiting Distribution of a Function of Two Independent Random Variables and its Statistical
      Application, \emph{Colloquium Mathematicum}, \bold{3}, 138--146.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\seealso{\code{\link{asymean}}, \code{\link{statgen}}}
\examples{

variance<-asyvar(xgrid=seq(0,1,length=21),ygrid=seq(0,1,length=21))

## this produces a 21x21 matrix for an equally-spaced grid of binomial proportions. 
}
\keyword{manip}% at least one, from doc/KEYWORDS





