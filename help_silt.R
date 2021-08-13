help_silt <- function(type = "generic") {
  if (type == "generic") {
    cat("----- YOU ARE IN THE GENERIC help_silt FUNCTION. This program performs point estimates of the USDA silt fraction from the broad particle-size classes of the International system, in addition to providing a 50% prediction interval. The instruction for using the program are the followings: \n")
    cat("-> Enter your data in the Input_data.xlsx file, that is, sand, silt and clay according to the International System of each soil samples. These data must be written as a percentage and with a single decimal figure; if they are entered with two or more decimal figures, the program will not return any results. \n")
    cat("-> Run the code, then, the Computing_siltUSDA function will be created in the Environment. Execute this function next.\n")
    cat("-> An analysis of the input data is carried out, warning if the sum of the three textural fractions is not equal to 100. If this happens, the program will not return any results.\n\n")
    cat(" If you want to know more about how this program works, you have the following options: \n")
    cat("1. help_silt(\"input values\") : Tells you information about how the input values must be\n")
    cat("2. help_silt(\"output values\") : Tells you information about how the output values are given\n")
  } else if (type == "input values") {
    cat("----- YOU ARE IN THE INPUT VALUES help_silt FUNCTION. The following input values are required:\n")
    cat("* SandIS: percentage of sand in the International System, with one decimal. \n")
    cat("* ClayIS: percentage of clay in the International System, with one decimal.\n")
    cat("* SiltIS: percentage of silt in the International System, with one decimal.\n")
  } else if (type == "output values") {
    cat("----- YOU ARE IN THE OUTPUT VALUES help_silt FUNCTION. The output values given when executing this program are:\n")
    cat("* SiltUSDA_Q2: predicted value for the USDA silt fraction (conditional median). \n")
    cat("* SiltUSDA_Q1: Lower limit of the 50% prediction interval (first conditional quartile). \n")
    cat("* SiltUSDA_Q3: Upper limit of the 50% prediction interval (third conditional quartile). \n")
  } else {
    cat("YOU HAVE INTRODUCED A WRONG ARGUMENT TO THE help_silt FUNCTION. THE OPTIONS ARE: \n")
    cat("1. help_silt() : For generic information\n")
    cat("2. help_silt(\"input values\") : Tells you information about how the input values must be\n")
    cat("3. help_silt(\"output values\") : Tells you information about how the output values are given\n")
  }
}
