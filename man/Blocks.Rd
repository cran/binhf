\name{Blocks}
\alias{Blocks}
\alias{Blocksr}
\alias{Bumps}
\alias{Bumpsr}
\alias{Bursts}
\alias{Burstsr}
\alias{const}
\alias{P2}
\alias{P3}
\alias{P3a}
\alias{P4}
\alias{sinlog}
\alias{sinlogr}
\title{Proportion Functions}
\description{
An example Bernoulli proportion function.
}
\usage{
%For example:
Blocks(x)
}
\arguments{
  \item{x}{a sequence of `time points' as input into the function.}
}
\details{
A proportion function based on the blocks function of Donoho, or that of Antoniadis and LeBlanc (2000).  The extra ``r" versions of these functions are reflected at the right endpoint.
}
\value{
  \item{y}{a vector of function values for the proportion function, corresponding to \env{x}.}
}
\references{Antoniadis, A. and LeBlanc, F. (2000) Nonparametric wavelet regression for binary response. \emph{Statistics}, \bold{34}, 183--213.}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}

\examples{

t<-seq(0,1,length=256)

y<-Blocks(t)

plot(t,y, type="l")
}
\keyword{datagen}% at least one, from doc/KEYWORDS
