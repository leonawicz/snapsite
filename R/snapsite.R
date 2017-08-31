library(DiagrammeR)
library(magrittr)

pkgs <- c("snapverse", "snaplite", "snapdata",
          "snapapps", "snapfuns", "snapprep", "alfresco",
          "snapclim", "snapfire", "snapmaps", "snappoly", "snapdist",
          "rvtable", "apputils", "maputils", "snaputils", "snapmeta", "snapsite")

ndf <- create_node_df(
  n = 18,
  type = "a",
  label = pkgs,
  fillcolor = c(rep("greenyellow", 3), "Firebrick1", rep("MediumOrchid", 3),
                rep("Orange", 5), rep("DodgerBlue", 6)),
  style = "filled",
  color = "#333333",
  shape = "rectangle",
  fontname = "arial",
  fixedsize = TRUE,
  width = 1)

edf <- create_edge_df(
  from = c(rep(1, 3), 2, 5:6, 3, 8:11, 13:17),
  to   = c(2:12, 14:18),
  arrowhead = c("normal", "none")[c(rep(1, 4), 2, 2, 1, rep(2, 9))],
  rel = "a",
  color = "#333333",
  penwidth = 1)

g <- create_graph(nodes_df=ndf, edges_df=edf, attr_theme = NULL)
get_global_graph_attrs(g)
render_graph(g)
