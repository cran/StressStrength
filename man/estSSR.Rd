\name{estSSR}
\alias{estSSR}
\title{
Sample estimation of reliability of stress-strength models
}
\description{
The function provides sample estimates of reliability of stress-strength models, where stress and strength are modeled as independent r.v., whose distribution form is known except for the values of its parameters, assumed all unknown
}
\usage{
estSSR(x, y, family="normal", twoside=TRUE, type="RG", alpha=0.05, B=2000)
}
\arguments{
  \item{x}{
a random sample from r.v. X modeling strength
}
  \item{y}{
a random sample from r.v. Y modeling stress
}
  \item{family}{
the distribution of both X and Y
}
  \item{twoside}{
if TRUE, the function computes two-side confidence intervals; otherwise, one-side (a lower bound)
}
  \item{type}{
type of confidence interval (CI) to be built. For the normal family, "RG" stands for Reiser-Guttman, "AN" for large sample (asymptotically normal), "LOGIT" or "ARCSIN" for logit or arcsin variance stabilizing tranformations, "B" for percentile bootstrap, "GK" for Guo-Krishnamoorthy (one-sided only).
}
  \item{alpha}{
the complement to one of the nominal confidence level
}
  \item{B}{
number of bootstrap replicates (for type "B")
}
}
\details{
For more details, please have a look at the references listed below
}
\value{
A list comprising
\item{ML_est}{the sample value of the maximum likelihood estimator; for normal r.v. \eqn{\hat{R}=\Phi[(\bar{x}-\bar{y})/\sqrt{\hat{\sigma}_x^2+\hat{\sigma}_y^2}]}, where \eqn{\bar{x}} and \eqn{\bar{y}} are the sample means, and \eqn{\hat{\sigma}_x^2}, \eqn{\hat{\sigma}_y^2} the biased maximum likelihood variance estimators}
\item{Downton_est}{(for normal r.v.) the sample value of one of the approximated UMVU estimators proposed by Downton \eqn{\hat{R}'=\Phi[(\bar{x}-\bar{y})/\sqrt{s_x^2+s_y^2}]}}
\item{CI}{the confidence interval}
\item{confidence_level}{the nominal confidence level \eqn{1-\alpha}}
}

\references{
Barbiero A (2011) Confidence Intervals for Reliability of Stress-Strength Models in the Normal Case, Comm Stat Sim Comp 40(6):907-925


Downton F. (1973) The Estimation of Pr (Y < X) in the Normal Case, Technometrics , 15(3):551-558 

Kotz S, Lumelskii Y, Pensky M (2003) The stress-strength model and its generalizations: theory
and applications. World Scientific, Singapore

Guo H, Krishnamoorthy K (2004) New approximate inferential methods for the reliability parameter
in a stress-strength model: The normal case. Commun Stat Theory Methods 33:1715-1731

Mukherjee SP, Maiti SS (1998) Stress-strength reliability in the Weibull case. Frontiers In Reliability 4:231-248. WorldScientific, Singapore

Reiser BJ, Guttman I (1986) Statistical inference for P(Y<X): The normal case. Technometrics 28:253-257
}
\author{
Alessandro Barbiero, Riccardo Inchingolo
}
\seealso{
\code{\link{SSR}}
}
\examples{
# distributional parameters of X and Y
parx<-c(1, 1)
pary<-c(0, 2)
# sample sizes
n<-10
m<-20
# true value of R
SSR(parx,pary)
# draw independent random samples from X and Y
x<-rnorm(n, parx[1], parx[2])
y<-rnorm(m, pary[1], pary[2])
# build two-sided confidence intervals
estSSR(x, y, type="RG")
estSSR(x, y, type="AN")
estSSR(x, y, type="LOGIT")
estSSR(x, y, type="ARCSIN")
estSSR(x, y, type="B")
estSSR(x, y, type="B",B=1000) # change number of bootstrap replicates
# and one-sided
estSSR(x, y, type="RG", twoside=FALSE)
estSSR(x, y, type="AN", twoside=FALSE)
estSSR(x, y, type="LOGIT", twoside=FALSE)
estSSR(x, y, type="ARCSIN", twoside=FALSE)
estSSR(x, y, type="B", twoside=FALSE)
estSSR(x, y, type="GK", twoside=FALSE)
# changing sample sizes
n<-20
m<-30
x<-rnorm(n, parx[1], parx[2])
y<-rnorm(m, pary[1], pary[2])
# build tow-sided confidence intervals
estSSR(x, y, type="RG")
estSSR(x, y, type="AN")
estSSR(x, y, type="LOGIT")
estSSR(x, y, type="ARCSIN")
estSSR(x, y, type="B")
}

\keyword{htest}
\keyword{models}
