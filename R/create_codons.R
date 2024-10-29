#' Create codons from bases
#'
#' @param bases List of DNA bases.
#' @param start The wanted start base. The default value is 1.
#'
#' @return The codons coded for by the input bases.
#' @export
#'
create_codons <- function(bases, start = 1){
  end_base <- nchar(bases)
  codons <- substring(bases,
                      first = seq(from = start, to = end_base-3+1, by = 3),
                      last = seq(from = 3+start-1, to = end_base, by = 3))
  return(codons)
}
