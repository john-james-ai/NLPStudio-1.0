#==============================================================================#
#                                     Tools                                    #
#==============================================================================#
#' Tools
#'
#' \code{Tools} Class containing various helper methods used within the package.
#'
#' @section Tools Methods:
#' \describe{
#'  \item{\code{makeRandomString(len = 12)}}{Returns a random string of the requested length.}
#' }
#'
#' @param len The length of the requested random string.
#'
#' @docType class
#' @author John James, \email{jjames@@datasciencesalon.org}
#' @export
Tools <- R6::R6Class(
  classname = "Tools",
  lock_objects = FALSE,
  lock_class = FALSE,

  public = list(

    makeRandomString = function(len = 12) {

      v <- ValidateNumeric$new()
      if (v$validate(cls = "Tools", method = "makeRandomString",
                 fieldName = "len", value = len, level = "Info",
                 msg = paste("Invalid length, random string of length 12 returned.",
                             "See ?Tools for further assistance."),
                 expect = TRUE) == FALSE) {
        len <- 12
      }
      return(paste0(sample(c(0:9, letters, LETTERS),
                           size = len, replace=TRUE),
                    collapse = ""))
    }
  )
)