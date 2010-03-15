\name{pintens}
\alias{pintens}
\docType{data}
\title{pintens}
\description{
An example binomial intensity vector.
}
\usage{data(pintens)}
\format{
  The format is:
 num [1:1024] 0.278 0.278 0.278 0.278 0.278 ...
}
\details{
The intensity is a vector of length 1024, based on a scaled `bumps' function of Donoho and Johnstone. 
}
%\source{
%  ~~ reference to a publication or URL from which the data were obtained ~~
%}
%\references{
%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(pintens)
plot(pintens,type="l")
}
\keyword{datasets}
