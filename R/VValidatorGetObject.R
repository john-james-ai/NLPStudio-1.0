#==============================================================================#
#                              VValidatorGetObject                             #
#==============================================================================#
#' VValidatorGetObject
#'
#'
#' \code{VValidatorGetObject} Visitor class responsible for validating requests
#' for object information.  Only permits objects of the State class to invoke
#' getObject methods.
#'
#' \strong{VValidatorGetObject Methods:}
#' The VValidatorGetObject methods are as follows:
#'  \itemize{
#'   \item{\code{nlpStudio(object, ...)}}{Method for validating the instantiation of the NLPStudio object}
#'   \item{\code{lab(object, ...)}}{Method for validating the instantiation of the Lab object}
#'   \item{\code{documentCollection(object, ...)}}{Method for validating the instantiation of the DocumentCollection object.}
#'   \item{\code{documentText(object, ...)}}{Method for validating the instantiation of the DocumentText object.}
#'   \item{\code{documentCsv(object, ...)}}{Method for validating the instantiation of the DocumentCsv object.}
#'   \item{\code{documentRdata(object, ...)}}{Method for validating the instantiation of the DocumentRdata object.}
#'   \item{\code{documentXlsx(object, ...)}}{Method for validating the instantiation of the DocumentXlsx object.}
#' }
#'
#' @param object The object for which the getObject method is invoked.
#' @param requester The object invoking the getObject method.
#'
#' @docType class
#' @author John James, \email{jjames@@DataScienceSalon.org}
#' @family Validation Classes
#' @export
VValidatorGetObject <- R6::R6Class(
  classname = "VValidatorGetObject",
  lock_objects = FALSE,
  lock_class = FALSE,

  private = list(

    validate = function(requester, object) {

      # Confirm required parameters are not missing.
      if (missing(requester)) {
        v <- Validator0$new()
        v$notify(class = class(object)[1], method = "getObject", fieldName = "requester",
                 value = "", level = "Error",
                 msg = paste0("Requester parameter is missing with no default. ",
                              "Methods invoking this method must send 'self' as ",
                              "a parameter to the getObject() method. ",
                              "See ?", class(object)[1], " for further assistance."),
                 expect = NULL)
        return(FALSE)
      }

      # Confirm class of requester
      v <- ValidatorClass$new()
      if (v$validate(class = class(object)[1], method = "getObject",
                     fieldName = "class(requester)", value = requester,
                     level = "Error",
                     msg = paste0("Objects of the ", class(requester)[1],
                                  " class can not invoke the getObject()",
                                  " method. ", "See ?", class(object)[1],
                                  " for further assistance."),
                     expect = classes) == FALSE) {
        return(FALSE)
      }
    }
  ),

  public = list(

    nlpStudio = function(requester, object) {
      return(private$validate(requester, object))
    },

    lab = function(requester, object) {
      return(private$validate(requester, object))
    },

    documentCollection = function(requester, object) {
      return(private$validate(requester, object))
    },

    documentText = function(requester, object) {
      return(private$validate(requester, object))
    },

    documentCsv = function(requester, object) {
      return(private$validate(requester, object))
    },

    documentRdata = function(requester, object) {
      return(private$validate(requester, object))
    },

    documentXlsx = function(requester, object) {
      return(private$validate(requester, object))
    }
  )
)