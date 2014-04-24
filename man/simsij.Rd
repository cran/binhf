\name{simsij}
\alias{simsij}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simulation function}
\description{
Proportion estimation procedure for simulations.
}
\usage{
simsij(nsims = 100, n = 256, proportion = P2, binsize = 1,
    thrule = "ebayesthresh", van = 8, fam = "DaubLeAsymm", pl = 3,
    prior = "laplace",
    vscale = "independent", plotstep = FALSE, a = NA,truncate = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nsims}{The number of times to repeat the function \env{doall} (on random datasets from \env{proportion}).}
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
\item{a}{the \env{a} argument for \code{EbayesThresh}.}
\item{truncate}{Should the estimates be truncated to lie in [0,1]?}
\item{...}{Any other optional arguments.}
  }
\details{This function creates a regularly-spaced vector on the unit interval of length \env{length}, and uses these values to create corresponding values using the proportion function.  These values are then used as binomial probabilities to sample "observed" binomial random variables.  The observation vector is then denoised using a wavelet transform defined by the arguments \env{van}, \env{fam}, \env{min.level} with thresholding method \env{meth}.  This denoising is done for both Anscombe and the Haar-Fisz method for binomial random variables.  The procedure is repeated \env{times} times, and the resulting proportion estimates averaged.
}
\value{
  \item{x}{regular grid on which the proportion function is evaluated.}
  \item{truep}{vector corresponding to \env{x} of proportion function values.}
  \item{ans}{matrix containing the errors from each of the \env{nsims} \env{doall} runs.}
  \item{est}{Array containing the \env{nsims} estimates produced by Anscombe and Haar-Fisz.}
  \item{bin}{Matrix of the raw binomial samples for each of the \env{nsims} runs.}
  

}
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
\seealso{\code{\link{hfdenoise}}}
\examples{
\dontrun{
a<-simsij(nsims=100)

plot(a$est[1,,1])


##^^ shows 1st binomial Haar-Fisz estimate.
}
}
\keyword{regression}% __ONLY ONE__ keyword per line









