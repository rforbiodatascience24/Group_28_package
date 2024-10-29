#' Plot amino acid codons
#'
#' @param amino_acids R vector of amino acids to plot
#'
#' @return Returns a codon column plot object
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
plot_codons <- function(amino_acids){
  # Finds unique amino acids
  unique_amino_acids <- amino_acids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Counts the nr of unique amino acids
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = amino_acids, pattern =  amino_acid)) |>
    as.data.frame()

  # Renames rows and columns of the counts dataframe
  colnames(counts) <- c("Counts")
  counts[["Amino_acids"]] <- rownames(counts)

  # Creates a column plot using ggplot2
  codon_column_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acids, y = Counts, fill = Amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(codon_column_plot)
}
