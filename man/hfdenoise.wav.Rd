\name{hfdenoise.wav}
\alias{hfdenoise.wav}
\title{Denoising function}
\description{
Denoise algorithm for thresholding methods supplied with wavethresh.
}
\usage{
hfdenoise.wav(x, binsize, transform = "binhf", meth = "u", van = 1, fam = "DaubExPhase", 
min.level = 3,coarse=FALSE)
}
\arguments{
  \item{x}{vector of observed values, of length a power of two.}
  \item{binsize}{the binomial size of the observed values \env{x}.}
  \item{transform}{A Gaussianizing transform.  Possible values are "binhf" or "ansc".}
  \item{meth}{A wavelet thresholding method.  Possible values are "u" for universal thresholding, or "c" for cross-validation.}
  \item{van}{the number of vanishing moments of the wavelet used in the wavelet denoiser.}
  \item{fam}{the wavelet family used in the wavelet denoiser.  Possible values are "DaubLeAsymm" and "DaubExPhase".}
  \item{min.level}{the primary resolution level for the wavelet transform denoiser.}
  \item{coarse}{Boolean variable indicating whether a "coarsening" modification should be applied.  For use with the chromosome datasets.}
}
\details{The function pre and post-processes the observed data with either Anscombe's transform or the binomial Haar-Fisz transform, using a wavelet denoiser to smooth the data, specified by the inputs \env{min.level}, \env{van} and \env{fam} combined with the thresholding rule \env{meth}.If \env{coarse} is set to true, the first finest 11 coefficient levels are set to zero, corresponding to coefficients produced from \eqn{2^11}= 2048 nucleotide bases.
}
\value{
  \item{fhat}{vector corresponding to \env{x} of the estimated binomial proportion.}
}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\note{This function requires the package wavethresh.}

\seealso{\code{\link{hfdenoise}}}
\examples{

library(wavethresh)

#create a sample intensity vector:

int<-sinlog(seq(0,1,length=256))
x<-NULL
for(i in 1:256){
x[i]<-rbinom(1,1,int[i])
}


est<-hfdenoise.wav(x,1,transform="ansc","u",6,"DaubLeAsymm",3,FALSE) 

}
\keyword{regression}% at least one, from doc/KEYWORDS

