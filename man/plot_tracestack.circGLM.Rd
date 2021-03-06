% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/circGLMClassPlotFunctions.R
\name{plot_tracestack.circGLM}
\alias{plot_tracestack.circGLM}
\title{Plot a stack of traceplots for a circGLM object}
\usage{
plot_tracestack.circGLM(m, coef = "Beta", labelFormat = "default",
  ggTheme = ggplot2::theme_bw(), res = 10000, burnThinLabel = TRUE)
}
\arguments{
\item{m}{A \code{circGLM} object.}

\item{coef}{A character string, either "Beta" or "Zeta", determining whether
the continuous regression predictors are shown in reparametrized form or
not.}

\item{labelFormat}{A character vector, either \code{"default"},
\code{"numbered"} or \code{"latex"}. By default, we find the names of the
variables in the circGLM object. If \code{"numbered"}, the parameter names
are numbered. The "latex" labels are useful if \code{knitr} is used with a
Tikz device.}

\item{ggTheme}{A ggplot theme object to use. The relevant theme function
should be evaluated.}

\item{res}{The maximum number iterations to print. If \code{res} is larger
than the number of iterations in the \code{circGLM} object, a subset of
size \code{res} is selected, and it is attempted to equally space the
selected iterations from the full set. This is useful if there is a very
large posterior sample due to having very little thinning.}

\item{burnThinLabel}{Logical; if TRUE, the x-label will reflect the fact that
a burn-in and a thinning factor were used. If FALSE, the x-labels will run
from 1 to Q.}
}
\value{
A ggplot2 plot.
}
\description{
An alternative option to plot traceplots from \code{circGLM} objects.
}
\examples{
plot(circGLM(th = rvmc(100, 0, 1)), type = "tracestack")

dat <- generateCircGLMData()
plot(circGLM(th ~ ., dat), type = "tracestack")

}
\seealso{
\code{\link{plot_trace.circGLM}},
  \code{\link{plot_predict.circGLM}}, \code{\link{plot_meancompare.circGLM}},
  \code{\link{plot_meanboxplot.circGLM}}, \code{\link{plot.circGLM}}.
}
