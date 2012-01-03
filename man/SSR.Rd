\name{SSR}
\alias{SSR}
\title{
Computation of reliability of stress-strength models
}
\description{
For a stress-strength model, with independent r.v. X and Y representing the strength and the stress respectively, the function computes the reliability \eqn{R=P(X>Y)}
}
\usage{
SSR(parx, pary, family = "normal")
}
\arguments{
  \item{parx}{
parameters of X distribution (for the normal distribution, mean \eqn{\mu_x} and standard deviation \eqn{\sigma_x})
}
  \item{pary}{
parameters of Y distribution (for the normal distribution, mean \eqn{\mu_y} and standard deviation \eqn{\sigma_y})
}
  \item{family}{
family distribution for both X and Y (now, only "normal" available)
}
}
\details{
The function computes \eqn{R=P(X>Y)} where X and Y are independent r.v. following the \code{family} distribution with distributional parameters \code{parx} and \code{pary}. 
}
\value{
\eqn{R=P(X>Y)}. For normal distributions, \eqn{R=\Phi(d)} with \eqn{d=(\mu_x-\mu_y)/\sqrt{\sigma_x^2+\sigma_y^2}}.
}
\references{
Kotz S, Lumelskii Y, Pensky M (2003) The stress-strength model and its generalizations: theory
and applications. World Scientific, Singapore
}
\author{
Alessandro Barbiero, Riccardo Inchingolo
}
\seealso{
\code{\link{estSSR}}
}
\examples{
# let X be a normal r.v. with mean 1 and sd 1;
# and Y a normal r.v. with mean 0 and sd 2
# X and Y independent
parx<-c(1, 1)
pary<-c(0, 2)
# reliability of the stress-strength model (X=strength, Y=stress)
SSR(parx,pary)
# changing the parameters of Y
pary<-c(1.5, 2)
# reliability of the stress-strength model (X=strength, Y=stress)
SSR(parx,pary)
}
\keyword{distribution}
\keyword{models}
