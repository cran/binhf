\name{qqstuff}
\alias{qqstuff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Quantile-quantile information about Haar-NN and Anscombe samples}
\description{
A function to generate Q-Q plots (from simulations) for the Anscombe and (binomial) Haar-Fisz transforms.
}
\usage{
qqstuff(intensity, binsize = 4, paths = 100, respaths = 1000, plot.q = FALSE, 
plot.sq = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{intensity}{an Bernoulli intensity vector, e.g. \env{pintens}.}
  \item{binsize}{a binomial size to generate a binomial mean vector.}
  \item{paths}{the number of paths sampled from the mean vector to use in Q-Q calculations.}
  \item{respaths}{the number of residual paths to use in squared residual calculations.}
  \item{plot.q}{A boolean variable, indicating whether simulation Q-Q plots should be outputted or not.}
  \item{plot.sq}{A boolean variable, indicating whether simulation squared residual plots should be outputted or not.}
}
\details{\env{respaths} paths are sampled from the mean intensity vector.  From these, the first \env{paths} are used to generate Q-Q data, which are then averaged for the Q-Q plots.  The original paths are used to calculate a squared residual vector corresponding to the mean intensity vector. 
}
\value{
  qqinfo.  A 8 component list of quantile and residual plot information.
  \item{vmat}{A matrix of dimensions respathsxlength(intensity), each row being a path from the intensity vector.}
  \item{Av}{A matrix of dimensions respathsxlength(intensity), each row an Anscombe-transformed path.}
  \item{bfv}{A matrix of dimensions respathsxlength(intensity), each row a binomial Haar-Fisz-transformed path.}
  \item{vminusl}{A matrix of the difference between the paths and the mean intensity.}
  \item{vminusl}{A matrix of the difference between the Anscombe-transformed paths and the mean intensity.}
  \item{vminusl}{A matrix of the difference between the binomial Haar-Fisz-transformed paths and the mean intensity.}
  \item{Asqres}{vector of squared residuals of Anscombe-transformed paths.}
  \item{bfsqres}{vector of squared residuals of binomial Haar-Fisz-transformed paths.}
}
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\note{This function requires the package wavethresh.  N.B. Since this function returns a lot of information, assign the output to a variable, to avoid printing endless information in the console.}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{qqnormy}}}
\examples{

data(pintens)

a<-qqstuff(intensity=pintens,binsize=4,paths=100,respaths=100,plot.q=TRUE,plot.sq=TRUE)

#plots some interesting graphs.
}
\keyword{datagen}% at least one, from doc/KEYWORDS
