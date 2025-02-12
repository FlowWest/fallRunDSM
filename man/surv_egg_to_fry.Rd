% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surv_egg_to_fry.R
\name{surv_egg_to_fry}
\alias{surv_egg_to_fry}
\title{Egg to Fry Survival}
\source{
IP-117068
}
\usage{
surv_egg_to_fry(
  proportion_natural,
  scour,
  temperature_effect = fallRunDSM::params$mean_egg_temp_effect,
  ..surv_egg_to_fry_int = fallRunDSM::params$..surv_egg_to_fry_int,
  .proportion_natural = fallRunDSM::params$.surv_egg_to_fry_proportion_natural,
  .scour = fallRunDSM::params$.surv_egg_to_fry_scour
)
}
\arguments{
\item{proportion_natural}{Variable describing the proportion of natural-origin spawners}

\item{scour}{Variable describing the probability of redd scouring event}

\item{temperature_effect}{Variable describing the effect of inchannel temperature on egg survival.
Fall and spring estimated by C. Hammersmark (CBEC Ecoengineering Inc.). Winter-run value was calibrated.}

\item{..surv_egg_to_fry_int}{Intercept}

\item{.proportion_natural}{Coefficient for \code{proportion_natural} variable}

\item{.scour}{Coefficient for \code{scour} variable}
}
\description{
Calculates the survival of transitioning from egg to fry
}
\details{
See \code{\link{params}} for details on parameter sources
}
