
MORPHO_PARAMS_RAW = data.table(read.xlsx("../data/All species_Morphometric_Parameters.xlsx", sep.names = " ", sheet = "Relationships"))

MORPHO_PARAMS_RAW[, species_code := factor(species_code)]

# Length-weight
LW_PARAMS_PW  = MORPHO_PARAMS_RAW[equation_type == "power" & sex == "pooled" & target_morpho %in% c("RD", "GUT"), .(species_group, species_code, species, ocean, equation, a, b, N, reference)][order(species_code, ocean)]

LW_PARAMS_sorted <- LW_PARAMS_PW %>%
  arrange(species_group)

LW_PARAMS_FT_PW = 
  LW_PARAMS_sorted %>%
  flextable() %>% 
  flextable::font(part = "all", fontname = "Calibri") %>% 
  flextable::fontsize(size = 9) %>% 
  flextable::set_header_labels(species_group = "Species Group", 
                               species_code = "Code",
                               species = "Species", 
                               equation = "Equation", 
                               a = "a", 
                               b = "b", 
                               N = "N", 
                               #MinSourceMorpho = "Min length", 
                               #MaxSourceMorpho = "Max length", 
                               reference = "Reference") %>% 
  align(align = "center", part = "header") %>% 
  border_outer(border = fp_border(width = 2)) %>% 
  merge_v(j = c("species_group", "species_code", "species")) %>% 
  bg(part = "header", bg = "lightgrey", i = 1) %>% 
  bold(i = 1, part = "header") %>% 
  set_formatter(a = function(x) {formatC(x, format = "e", digits = 4)}) %>% 
  set_formatter(b = function(x) {formatC(x, digits = 4)}) %>% 
  fix_border_issues() %>% 
  width(width = c(0.5,0.5, 0.9, 1.4, 1, 0.8, 0.8, 0.5, 1.4)) %>%
  theme_vanilla()

# Length-LENGTH
LL_PARAMS_LI  = MORPHO_PARAMS_RAW[equation_type == "linear" & sex == "pooled", .(species_group, species_code, species, ocean, equation, a, b, N, reference)][order(species_code, ocean)]

LL_PARAMS_sorted <- LL_PARAMS_LI  %>%
  arrange(species_group)

LL_PARAMS_FT_LI = 
  LW_PARAMS_sorted %>%
  flextable() %>% 
  flextable::font(part = "all", fontname = "Calibri") %>% 
  flextable::fontsize(size = 9) %>% 
  flextable::set_header_labels(species_group = "Species Group", 
                               species_code = "Code",
                               species = "Species", 
                               equation = "Equation", 
                               a = "a", 
                               b = "b", 
                               N = "N", 
                               #MinSourceMorpho = "Min length", 
                               #MaxSourceMorpho = "Max length", 
                               reference = "Reference") %>% 
  align(align = "center", part = "header") %>% 
  border_outer(border = fp_border(width = 2)) %>% 
  merge_v(j = c("species_group", "species_code", "species")) %>% 
  bg(part = "header", bg = "lightgrey", i = 1) %>% 
  bold(i = 1, part = "header") %>% 
  set_formatter(a = function(x) {formatC(x, format = "e", digits = 4)}) %>% 
  set_formatter(b = function(x) {formatC(x, digits = 4)}) %>% 
  fix_border_issues() %>% 
  width(width = c(0.5,0.5, 0.9, 1.4, 1, 0.8, 0.8, 0.5, 1.4)) %>%
  theme_vanilla()


