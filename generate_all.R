# Source the R codes
setwd("initialization")
source("00_CORE.R")
setwd("..")

PAPER_NUMBER_VERSION = "18"
WP_IDENTIFIER = "IOTC-2025-WPDCS21"

TITLE = paste0(WP_IDENTIFIER, "-", PAPER_NUMBER_VERSION, " - Biological")

# DOCX
render("rmd/Bio_doc.qmd", 
       output_format = word_document(reference_docx = "../templates/doc_template.docx") , 
       output_dir    = "outputs/", 
       output_file   = paste0(TITLE, ".docx")
)

# PPTX
render("rmd/00_PPTX.Rmd",
       output_format = powerpoint_presentation(reference_doc = "../templates/ppt_template.potx", slide_level = 2),
       output_dir    = "outputs/",
       output_file   = paste0(TITLE, ".pptx")
)

# HTML
render("rmd/00_DOCX_HTML.Rmd", 
       output_format = "html_document2",
       output_dir    = "outputs/", 
       output_file   = paste0(TITLE, ".html")
)

# DOCX 
# For the report appendix tables on the main data issues (Appendix IV)
render("rmd/REPORT_APPENDIX_TABLES_00_DOCX.Rmd", 
       output_format = "word_document2", 
       output_dir    = "outputs/", 
       output_file   = "REPORT_APPENDIX_TABLES_00.docx"
)
