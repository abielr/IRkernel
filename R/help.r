#' An R kernel for IPython.
#' 
#' IPython's modern interfaces, including the IPython Notebook, speak a JSON+ZMQ
#' protocol to a 'kernel' which is responsible for executing code. This protocol
#' is language agnostic, so other languages can take advantage of IPython's rich
#' UI by implementing a kernel. This package is a kernel for the R language.
#' 
#' @section Options:
#' 
#' The following can be set/read via \code{options(opt.name = ...)} / \code{getOption('opt.name')}
#' 
#' \describe{
#'   \item{\code{jupyter.rich_display}}{Use more than just text display}
#'   \item{\code{jupyter.result_mimetypes}}{
#'      The formats emitted when any return value is to be displayed
#'      (default: all mimetypes listed \href{http://ipython.org/ipython-doc/stable/api/generated/IPython.core.formatters.html#IPython.core.formatters.format_display_data}{here}) 
#'   }
#'   \item{\code{jupyter.plot_mimetypes}}{
#'      The plot formats emitted to the frontend when a plot is displayed.
#'      (default: image/png, application/pdf, and image/svg+xml)
#'   }
#' }
#'
#' @export main
#' 
#' @import methods
#' @import rzmq
#' @import uuid
#' @import digest
#' @importFrom evaluate evaluate new_output_handler parse_all
#' @importFrom jsonlite fromJSON toJSON
#' @importFrom IRdisplay publish_mimebundle
#' @importFrom repr mime2repr repr_text
#' 
#' @docType package
#' @name IRkernel
#' @aliases IRkernel IRkernel-package
NULL
