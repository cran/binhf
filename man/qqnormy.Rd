\name{qqnormy}
\alias{qqnormy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Quantile generator}
\description{
A Q-Q value generator.
}
\usage{
qqnormy(y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{data sample}
}
\details{
This is an equivalent to \env{qqnorm}, but returning sorted values.  See \env{qqnorm}.
}
\value{
  \item{y}{vector of quantile values.}
  }
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ }

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{qqstuff}}}
%\examples{
%}
\keyword{datagen}% at least one, from doc/KEYWORDS
