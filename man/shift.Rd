\name{shift}
\Rdversion{1.1}
\alias{shift}
\title{Shift function
}
\description{
This function shifts a vector input a certain number of places in the direction desired.
}
\usage{
shift(v, places, dir = "right")
}
\arguments{
  \item{v}{
a vector of input values.
}
  \item{places}{
  the number of places to shift \env{v}.
}
  \item{dir}{
  The direction to shift \env{v}.
}
}
\details{
The function shifts the vector \env{v} by \env{places} in the direction of \env{direction}, using wrapping at the boundaries. Used for cycle spinning.
}
\value{
  \item{vnew}{the shifted version of \env{v}.}
}
\author{Matt Nunes (\email{m.nunes@ucl.ac.uk})}
\examples{

v<-runif(10)

#have a look at v:

v

#now shift the values 4 places to the right...

shift(v,4,dir="right")

}
\keyword{manip}
