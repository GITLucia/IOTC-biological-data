#l_info("Initialising external libraries...")

# Install/load libraries required for analysis
pacman::p_load(
  "tidyverse",
  "flextable",
  "scales",
  "openxlsx",
  "ggpubr",
  "gridExtra",
  "rmarkdown",
  "knitr",
  "bookdown",
  "officer",
  "dplyr",
  "webshot",
  "treemap", 
  "treemapify", 
  "officer", 
  "officedown",
  "WeightedTreemaps",
  "ggsankey"
  )

#webshot::install_phantomjs(force = TRUE)

# Set chart theme
theme_set(theme_bw())

#l_info("External libraries initialised!")