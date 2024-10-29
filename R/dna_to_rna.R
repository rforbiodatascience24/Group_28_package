#' dna transcription
#'
#' @param dna_sequence a sequence of dna
#'
#' @return the rna transcribed version of the sequence
#' @export
#'
dna_to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
