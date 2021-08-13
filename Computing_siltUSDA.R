Computing_siltUSDA <- function(){
  library("readxl")
  library("writexl")
  library("rstudioapi")
  dir = dirname(rstudioapi::getSourceEditorContext()$path)
  setwd(dir)
  source("help_silt.R")
  
  cat("---- Analyzing input data...\n")
  data <- readxl::read_excel(paste(dir,"/Data/SI_USDA.xlsx", sep = ""), sheet = 1, col_names = TRUE, col_types = c("numeric","numeric", "numeric", "numeric", "numeric", "numeric"))
  input_data <- readxl::read_excel(paste(dir,"/Input_data.xlsx", sep = ""), sheet = 1, col_names = TRUE)
  
  # First we check if the input data is correct (must be satisfied that clay + sand + silt = 100%)
  col1 = names(input_data[1])
  col2 = names(input_data[2])
  col3 = names(input_data[3])
  
  for (i in 1:nrow(input_data)) {
    ele1 = as.numeric(input_data[i,1])
    ele2 = as.numeric(input_data[i,2])
    ele3 = as.numeric(input_data[i,3])
    sum = (ele1 + ele2 + ele3)
    
    if ( floor(sum) != 100) {
      cat("---- WARNING! Data with values: \n", col1, ele1, "\n", col2, ele2, "\n", col3, ele3, "\nhas wrong quantities, it will be left blank. \n For some help type \"help_silt()\".\n")  
      }
  }
  # We do this in order to give the output data in the same order as the input data
  input_data$id <- 1:nrow(input_data)
  merged <- merge(x = data, y = input_data, by = c(col1, col2, col3), all.y = TRUE, sort = FALSE)
  ordered <- merged[order(merged$id),]
  output_data <- ordered[,1:(ncol(ordered)-1)]
  
  # Writing the resulting data
  writexl::write_xlsx(output_data, "Output_data.xlsx", col_names = TRUE, format_headers = TRUE)
  
  cat("---- Output data has been produced\n")
}
