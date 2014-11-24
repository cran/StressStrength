\name{gkf}
\alias{gkf}
\title{
Numerical solution for an equation involving noncentral T cdf
}
\description{
It provides the solution of the equation \eqn{F_t(q;df,x)=p}, where \eqn{F_t} is the cdf (calculated in \code{q}) of a non-central Student r.v. with \code{df} degrees of freedom and unkwon noncentrality parameter x. In R code, gkf provides the solution of \code{pt(q,df,x)=p}.
}
\usage{
gkf(p, q, df, eps = 1e-05)
}
\arguments{
  \item{p}{
a probability
}
  \item{q}{
a real value
}
  \item{df}{
degrees of freedom of noncentral T
}
  \item{eps}{
tolerance
}
}
\details{This function is used for building Guo-Krishnamoorthy confidence intervals for R
}
\value{
the noncentrality parameter \eqn{x} satisfying the equation \eqn{F_t(q;df,x)=p}
}
\references{
Guo H, Krishnamoorthy K (2004) New approximate inferential methods for the reliability parameter
in a stress-strength model: The normal case. Commun Stat Theory Methods 33:1715-1731
}
\author{
Alessandro Barbiero, Riccardo Inchingolo
}
\seealso{
\code{\link{estSSR}}
}
\examples{
p<-0.95
q<-5
df<-12
ncp<-gkf(p, q, df)
ncp
# check if the result is correct
pt(q, df, ncp)
# OK
# changing the tolerance
ncp<-gkf(p, q, df, eps=1e-10)
ncp
pt(q, df, ncp)
}
\keyword{distribution}
