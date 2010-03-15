\name{plotest}
\alias{plotest}
\title{Plotting function}
\description{
Plotting function for proportion estimates procedure.
}
\usage{
plotest(l, plot.it = FALSE, verbose = FALSE)
}
\arguments{
  \item{l}{A results list from \env{doall}.}
  \item{plot.it}{Should results be plotted?}
  \item{verbose}{Should extra information be given during the procedure?}
  }
\details{This function uses \env{norm} to compute errors for estimates produced by \env{doall}.
}
\value{
  \item{hfn}{error between Haar-Fisz estimate and \env{truep} of \env{doall}.}
  \item{an}{error between Anscombe estimate and \env{truep} of \env{doall}.}
  \item{fn}{error between Freeman-Tukey estimate and \env{truep} of \env{doall}.}
}
%\references{ ~put references to the literature/web site here ~ }
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
\seealso{\code{\link{norm}}}
\examples{

sim<-hfdenoise()

plotest(sim)

}
\keyword{regression}% __ONLY ONE__ keyword per line









