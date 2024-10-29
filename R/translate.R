#' Translate to amino acids
#'
#' @param codons List of codons
#'
#' @return One letter code corresponding to amino acids
#' @export
#'
#'
translate <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
