\name{norm}
\alias{norm}
\title{Euclidean norm}
\description{Calculates the root squared error of two vectors.
}
\usage{
norm(x,y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{input data vector}
  \item{y}{input data vector}
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
   \item{e}{error between the two input vectors}
 
}

\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
%\note{ ~~further notes~~ }

% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{\code{plotest}}
\examples{

#generate data:

x<-y<-runif(100)

error<-norm(x,y)


#this is the difference between the vectors.

}
\keyword{manip}% at least one, from doc/KEYWORDS

