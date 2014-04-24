\name{propest.wav}
\alias{propest.wav}
\title{Proportion estimation function}
\description{
Proportion estimation procedure for simulations.
}
\usage{
propest.wav(proportion = P2, binsize=1,length = 256, times = 100, meth = "u", van = 6, 
fam = "DaubLeAsymm", min.level = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{proportion}{A Bernoulli proportion/binomial mean function.  Examples are \env{P2}, \env{P4} and \env{sinlog}.}
  \item{binsize}{The binomial size corresponding to the mean function \env{proportion}.}
  \item{length}{Length of vector to be produced.  Must be a power of two.}
  \item{times}{The number of times to sample the proportion.}
  \item{meth}{A wavelet thresholding method.  Possible values are "u" for universal thresholding, or "c" for cross-validation.}
  \item{van}{the number of vanishing moments of the wavelet used in the wavelet denoiser.}
  \item{fam}{the wavelet family used in the wavelet denoiser.  Possible values are "DaubLeAsymm" and "DaubExPhase".}
  \item{min.level}{the primary resolution level for the wavelet transform denoiser.}
  }
\details{This function creates a regularly-spaced vector on the unit interval of length \env{length}, and uses these values to create corresponding values using the proportion function.  These values are then used as binomial probabilities to sample "observed" binomial random variables.  The observation vector is then denoised using a wavelet transform defined by the arguments \env{van}, \env{fam}, \env{min.level} with thresholding method \env{meth}.  This denoising is done for both Anscombe and the Haar-Fisz method for binomial random variables.  The procedure is repeated \env{times} times, and the resulting proportion estimates averaged.
}
\value{
  \item{x}{regular grid on which the proportion function is evaluated.}
  \item{y}{vector corresponding to \env{x} of proportion function values.}
  \item{b}{matrix of dimensions \env{times}x\env{length} of sampled binomial variables.}
  \item{e}{matrix of dimensions \env{times}x\env{length} of estimated values of the proportion function, for the binomial Haar-Fisz transform.}
  \item{ea}{matrix of dimensions \env{times}x\env{length} of estimated values of the proportion function, for Anscombe's transform.}
  \item{meanfhat}{averaged proportion estimate for the binomial Haar-Fisz transform.}
  \item{meanfhata}{averaged proportion estimate for Anscombe's transform.}
  \item{amse}{average mean square error for the binomial Haar-Fisz transform.}
  \item{amsea}{average mean square error for Anscombe's transform.}
}
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{\code{\link{altpropest}}, \code{\link{hfdenoise}}}
\examples{
\dontrun{
sim<-propest.wav(proportion = P2, binsize=1,length = 256, times = 1000, meth = "u", 
van = 6, fam = "DaubLeAsymm", min.level = 4)

plot(sim$x,sim$y,type="l",xlab="",ylab="Binomial mean function")

##^^ shows original proportion to estimate.

lines(sim$x,sim$meanfhat,col=2)
lines(sim$x,sim$meanfhata,col=3)

##^^shows the estimates of the proportion from the two transforms.
}
}
\keyword{regression}% __ONLY ONE__ keyword per line









