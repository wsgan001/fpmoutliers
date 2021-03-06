% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmml.R
\name{generatePMML}
\alias{generatePMML}
\title{PMML conversion - PMML representation of outliers}
\usage{
generatePMML(model, dataFrame = NULL, topN = NULL)
}
\arguments{
\item{model}{outlier model}

\item{dataFrame}{frame for labeling}

\item{topN}{limit number of outliers in the output}
}
\value{
pmml model
}
\description{
Kuchar, Jaroslav et al. “Outlier (Anomaly) Detection Modelling in PMML.” RuleML+RR (2017).(http://ceur-ws.org/Vol-1875/paper9.pdf)
}
\examples{
\dontrun{
library("fpmoutliers")
dataFrame <- read.csv(
     system.file("extdata", "fp-outlier-customer-data.csv", package = "fpmoutliers"))
model <- FPI(dataFrame, minSupport = 0.001)
generatePMML(model, dataFrame)
}
}
