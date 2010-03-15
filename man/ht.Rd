\name{ht}
\alias{ht}
\alias{ht2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Forward Haar wavelet transform}
\description{
Forward Haar transform. 
}
\usage{
ht(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{data vector of (binomial) observations, of length a power of two.}

}
\details{
The procedure performs the Haar wavelet transform on the data \env{x}.
}
%\value{
%  \item{hf}{a list of two components \env{d}: transformed observations corresponding to \env{x} and \env{s}: scaling coefficient vector used in Fisz modification. }
%}
%\references{ ~put references to the literature/web site here ~ }
%\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{This function requires the package wavethresh.}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{ht.inv}}}
\examples{
x<-rbinom(256,32,.35)
ht(x)
}
\keyword{manip}% at least one, from doc/KEYWORDS

