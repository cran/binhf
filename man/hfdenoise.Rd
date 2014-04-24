\name{hfdenoise}
\alias{hfdenoise}
\title{Simulation function}
\description{
Proportion estimation procedure for simulations.
}
\usage{hfdenoise(n = 256, proportion = P2, binsize = 1, thrule = "ebayesthresh",
    van = 8, fam = "DaubLeAsymm", pl = 3, prior = "laplace", vscale = "independent", 
plotstep = FALSE, truncate = FALSE, ...)}
\arguments{
  \item{n}{Length of vector to be sampled.}
  \item{proportion}{The function name of the proportion to be sampled.}
  \item{binsize}{The binomial size corresponding to the mean function \env{proportion}.}
  \item{thrule}{Thresholding procedure to be used in the smoothing.  Possible values are "sureshrink" and "ebayesthresh".}
  \item{van}{the vanishing moments of the decomposing wavelet basis.}
  \item{fam}{the wavelet family to be used for the decomposing transform.Possible values are "DaubLeAsymm" and "DaubExPhase".}
  \item{pl}{the primary resolution to be used in the wavelet transform.}
\item{prior}{Prior to be used in ebayesthresh thresholding.}
\item{vscale}{argument to ebayesthresh thresholding procedure (variance calculation: "independent" or "bylevel").}
\item{plotstep}{Should all steps be plotted in estimation procedure?}
\item{truncate}{Should the estimates be truncated to lie in [0,1]?}
\item{...}{Any other optional arguments.}
}
\details{This function creates a regularly-spaced vector on the unit interval of length \env{length}, and uses these values to create corresponding values using the proportion function.  These values are then used as binomial probabilities to sample "observed" binomial random variables.  The observation vector is then denoised using a wavelet transform defined by the arguments \env{pl}, \env{van}, \env{fam} with thresholding method \env{thrule}.  This denoising is done for both Anscombe and the Haar-Fisz method for binomial random variables.  The procedure is repeated \env{times} times, and the resulting proportion estimates averaged.
}
\value{
  \item{x}{regular grid on which the proportion function is evaluated.}
  \item{truep}{vector corresponding to \env{x} of proportion function values.}
  \item{fhat}{Binomial Haar-Fisz estimate.}
  \item{fhata}{Anscombe inverse sine estimate.}
  \item{fhatf}{Freeman-Tukey average inverse sine estimate.}
  \item{fl1}{lokern estimate using \env{binhf.wd} as a preprocessor.}
  \item{fl2}{lokern estimate using Anscombe as a preprocessor.}
  \item{bbwd}{wd object of binomial Haar-Fisz before thresholding.}
  \item{awd}{wd object of Anscombe before thresholding.}
\item{b}{data from which estimates were computed (sampled from \env{truep}.}
\item{bb}{data after being preprocessed with binomial Haar-Fisz.}
\item{thr}{Thresholded wd object of \env{bbwd}.}
\item{tmp}{Thresholded (binomial Haar-Fisz) data before postprocessing.}

}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\seealso{\code{\link{simsij}}}

\examples{
sim<-hfdenoise()

plot(sim$x,sim$truep,type="l", xlab="",ylab="Binomial Proportion")

##^^ shows original proportion to estimate.

lines(sim$x,sim$fhat,col=2)
lines(sim$x,sim$fhata,col=3)

##^^shows the estimates of the proportion from the two transforms.

}

\keyword{regression}% __ONLY ONE__ keyword per line

