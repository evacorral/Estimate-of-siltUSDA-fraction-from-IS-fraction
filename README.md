# Estimating USDA silt fraction from textural fractions in the International System

This program provides the USDA silt fraction (0.002-0.05 mm) from the International System fractions: clay (0-0.002 mm), silt (0.002-0.02 mm) and sand (0.02-2 mm). A detailed explanation of the methodology followed to obtain these values can be consulted at XXX.

Instructions for using the program:

• Download the code

• Enter your data in the Input_data.xlsx file, that is, sand, silt and clay according to the International System of each soil samples. These data must be written as a percentage and with a single decimal figure; if they are entered with two or more decimal figures, the program will not return any results.

• Open the file Computing siltUSDA, in R.

• Run the code, then, the Computing_siltUSDA function will be created in the Environment. Execute this function next.

• An analysis of the input data is carried out, warning if the sum of the three textural fractions is not equal to 100. If this happens, the program will not return any results.

• The output_data.xlsx file is created, in which 3 new fields are added to the original ones: the predicted value for the USDA silt fraction (conditional median, SiltUSDA_Q2) and its 50% prediction interval delimited by the first conditional quartile (SiltUSDA_Q1) and third conditional quartile (SiltUSDA_Q3)
    
• More information about how the program works can be consulted in “help_silt()”.
    
 
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Program Computing silt USDA </span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/ejerezl/Proyecto-Eva/" property="cc:attributionName" property="cc:attributionName" rel="cc:attributionURL"> Esther Jerez</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
