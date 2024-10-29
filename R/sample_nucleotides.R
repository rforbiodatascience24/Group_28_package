#' sample_nucleotides
#'
#' @param sequence_length define the length of wanted nucleotide sequence
#'
#' @return A nucleotide sequence based on the length provided "sequence length"
#' @export
#'
sample_nucleotides <- function(sequence_length){
  sample_sequence <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  nucleotide_sequence <- paste0(sample_sequence, collapse = "")
  return(nucleotide_sequence)
}
