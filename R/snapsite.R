#' Create a SNAPverse diagram
#'
#' Save a SNAPverse diagram to disk. The default \code{verse} is \code{"complete"}. It is the only option at this time. More coming soon.
#' Other arguments are passed to \code{DiagrammeR::export_graph}.
#'
#' @param verse character, type of verse flowchart diagram. Defaults to \code{"complete"}.
#' @param file_name output file name, defaults to \code{"sv_td_all.svg"} for a topdown chart of the full verse.
#' @param file_type the output file type.
#' @param title character, flowchart title.
#' @param width numeric.
#' @param height numeric.
#'
#' @return side effect of saving image file to disk.
#' @export
#'
#' @examples
#' \dontrun{verse_diagram(title="Simplified overview of the SNAPverse")}
verse_diagram <- function(verse = "complete", file_name = "sv_td_all.svg", file_type = NULL,
                           title = NULL, width = 350, height = NULL){
  pkgs <- snapmeta::sv_pkgs()
  types <- unique(pkgs$type)
  clrs <- c("Chartreuse3", "DarkOrchid", "Orange", "DodgerBlue", "#555555")[match(pkgs$type, types)]
  hide_edge_idx <- c(rep(1, 11), 2, 1, 1, 2, 2)

  ndf <- DiagrammeR::create_node_df(
    n = nrow(pkgs), type = "a", label = pkgs$pkg, fillcolor = clrs, style = "filled", color = "#333333",
    fontcolor = "white", shape = "rectangle", fontname = "arial", fixedsize = TRUE, width = 1)

  edf <- DiagrammeR::create_edge_df(
    from = c(rep(1, 3), 2, 4:5, 3, 7:10, 13:17),
    to   = c(2, 3, 12, 4:11, 14:18),
    arrowhead = c("normal", "none")[c(rep(1, 4), 2, 2, 1, rep(2, 9))],
    rel = "a",
    color = paste0("#333333", c("", "00")[hide_edge_idx]),
    penwidth = c(1, 0)[hide_edge_idx])

  g <- DiagrammeR::create_graph(nodes_df=ndf, edges_df=edf, attr_theme = NULL)
  DiagrammeR::export_graph(g, file_name = file_name, file_type = file_type, title = title,
                           width = width, height = height)
  invisible()
}
