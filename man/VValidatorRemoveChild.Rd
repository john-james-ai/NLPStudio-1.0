% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VValidatorRemoveChild.R
\docType{class}
\name{VValidatorRemoveChild}
\alias{VValidatorRemoveChild}
\title{VValidatorRemoveChild}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
VValidatorRemoveChild
}
\arguments{
\item{object}{The object in its current state}

\item{...}{Parameters}
}
\description{
\code{VValidatorRemoveChild} Visitor class responsible for validating the parameters for the removeChild methods
of aggregate and composite classes.
}
\details{
\strong{VValidatorRemoveChild Methods:}
The VValidatorRemoveChild methods are as follows:
 \itemize{
  \item{\code{nlpStudio(object, ...)}}{Method for validating the removeChild method parameters of the NLPStudio object}
  \item{\code{lab(object, ...)}}{Method for validating the removeChild method parameters of the Lab object}
  \item{\code{documentCollection(object, ...)}}{Method for validating the removeChild method parameters of the DocumentCollection object.}
  \item{\code{documentText(object, ...)}}{Method for validating the removeChild method parameters of the DocumentText object.}
  \item{\code{documentCsv(object, ...)}}{Method for validating the removeChild method parameters of the DocumentCsv object.}
  \item{\code{documentRdata(object, ...)}}{Method for validating the removeChild method parameters of the DocumentRdata object.}
  \item{\code{documentXlsx(object, ...)}}{Method for validating the removeChild method parameters of the DocumentXlsx object.}
}
}
\seealso{
Other Validation Classes: \code{\link{VValidatorAddChild}},
  \code{\link{VValidatorGetObject}},
  \code{\link{VValidatorInit}},
  \code{\link{VValidatorParent}},
  \code{\link{VValidatorRestore}},
  \code{\link{Validator0}}, \code{\link{ValidatorClass}},
  \code{\link{ValidatorDate}},
  \code{\link{ValidatorExists}},
  \code{\link{ValidatorLogical}},
  \code{\link{ValidatorName}},
  \code{\link{ValidatorNoSpaces}},
  \code{\link{ValidatorNotEmpty}},
  \code{\link{ValidatorNumeric}},
  \code{\link{ValidatorPath}},
  \code{\link{ValidatorString}},
  \code{\link{ValidatorUrl}}, \code{\link{Validator}}
}
\author{
John James, \email{jjames@DataScienceSalon.org}
}
\keyword{datasets}