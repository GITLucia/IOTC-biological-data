# Clears the environment
rm(list = ls())

# To avoid switch to scientific notation
options(scipen = 100)

# Includes defaults and helper functions
source("./90_DEFAULTS.R")
source("./91_LIBS_IOTC.R")
source("./92_LIBS_EXTERNAL.R")
source("./93_COMMON_FUNCTIONS.R")
source("./94_DATABASE_CONNECTIONS.R")

# Functions
source("./01_01_DATA_QUALITY_STATUS_TABLE_FUNCTION.R")
source("./01_02_DATA_STATUS_FG_FLAG_SUMMARY_FUNCTION.R")
source("./01_03_DATA_STATUS_FG_FLAG_SUMMARY_FLEXTABLE_FUNCTION.R")
source("./01_04_DATA_QUALITY_TREE_MAP_FUNCTION.R")

# Configure years of interest
# REPORTING
REPORTING_YL = 2025
REPORTING_DEADLINE = as.Date(paste0(REPORTING_YL, "-06-30"))
WPDCS_DEADLINE     = as.Date("2025-11-24")

# QUALITY
YF = 1983  # First year
YL = 2024  # Last year
YP = YL-1  # Year previous to last year

QUALITY_YEARS = YF:YL

# Core charts and tables
source("./02_01_DATA_REPORTING_REQUIREMENTS.R")
source("./02_02_QUALITY_SCORE_KEY.R")
source("./02_03_DATA_TIMELINESS.R")
source("./02_04_DATA_QUALITY_EXTRACTION.R")
source("./02_05_DATA_QUALITY_STATUS_FLEETS_YL.R")
#source("./02_06_DATA_QUALITY_STATUS_FISHERY_GROUPS.R")
source("./02_07_DATA_FISHING_CRAFTS.R")
source("./02_08_DISCARD_DATA.R")
source("./02_09_DATA_STATUS_FAD_SUPPLY.R")
source("./02_10_DATA_TAGGING.R")
source("./02_11_APPENDIX_ISSUES.R")
