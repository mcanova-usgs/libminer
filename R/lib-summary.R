#' R Library Summary
#'
#' Provides a brief summary of the packages installed on your machine.
#'
#' @return A `data.frame` containing a count of the packages in each of the user's
#'  libraries.
#' @export
#'
#' @examples
lib_summary <- function(){
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
