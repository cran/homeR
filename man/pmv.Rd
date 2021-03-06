% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmv.R
\name{pmv}
\alias{pmv}
\title{Predicted Mean Vote}
\usage{
pmv(clo, met, air.temp, saturation)
}
\arguments{
\item{clo}{Thermal insulation of clothing in [clo] (underwear, blouse/shirt, slacks/trousers, jacket, socks and shoes are approximately 1 clo)}

\item{met}{Physical activity in [met] (one person seated at rest is approximately 1 met)}

\item{air.temp}{Indoor air temperature (assumed equal to mean radiant temperature) in [C]}

\item{saturation}{Ratio of moisture content to moisture content of saturated air at the same temperature, in [\%] (approximately the same thing as relative humidity)}
}
\value{
The predicted mean vote, a value between -3 (cold) to +3 (hot)
}
\description{
Computes Fanger's predicted mean vote
}
\details{
Compute the predicted mean vote for one or more combinations of 
clo, met, air temperature and moisture saturation. The inputs arguments 
can be scalars or vectors.
}
\examples{
# With scalars
pmv(clo=1.0,
    met=1.2,
    air.temp=19,
    saturation=40)
# With vectors
pmv(clo=c(1.0, 1.5),
    met=c(1.2, 0.6),
    air.temp=c(19, 30),
    sat=c(35, 40))
}
\references{
CIBSE Guide A, section 1.4 and 1.A1.2 (from which this implementation is derived)
}

