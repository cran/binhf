\name{invansc}
\alias{invansc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Inverse Anscombe transformation}
\description{Does the inverse of Anscombe's inverse sine transformation on a vector input.
}
\usage{
invansc(y, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{input data vector.}
  \item{n}{the binomial size corresponding to the observed binomial values.}
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
   \item{x}{vector of transformed data corresponding to \env{y}.}
 
}
\references{
Anscombe, F.J. (1948) The transformation of poisson, binomial and negative binomial data.  \emph{Biometrika}, \bold{35}, 246-254.
}

\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ }

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{ansc}}, \code{\link{hfdenoise}}, \code{\link{hfdenoise.wav}}}
\examples{

#generate binomial data:

x<-rbinom(100,10,.5)

y<-ansc(x,10)

x1<-invansc(y,10)

#this should be the original data.

}
\keyword{manip}% at least one, from doc/KEYWORDS

