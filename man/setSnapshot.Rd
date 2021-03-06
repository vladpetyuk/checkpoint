% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setSnapshot.R
\name{setSnapshot}
\alias{setSnapshot}
\title{Set default CRAN repository to MRAN snapshot date.}
\usage{
setSnapshot(snapshotDate)
}
\arguments{
\item{snapshotDate}{Date of snapshot to use in \code{YYYY-MM-DD} format,e.g. \code{"2014-09-17"}.  Specify a date on or after \code{"2014-09-17"}.  MRAN takes one snapshot per day.}
}
\description{
Set default CRAN repository to MRAN snapshot date.
}
\examples{
# Empty date field returns current repo

oldRepos <- getOption("repos")
setSnapshot()

# Valid snapshot date
# Connects to MRAN to check for valid URL, so skip on CRAN
\dontrun{
setSnapshot("2014-11-16")
}

# Invalid snapshot date (in future), returns error
\dontrun{
setSnapshot("2100-01-01")
}

options(repos = oldRepos)
}

