# File 7 - Correlogram

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

install.packages("corrgram")
library(corrgram)

corrgram(BigMartData, order=NULL, panel=panel.shade, text.panel=panel.txt,
         main="Correlogram") 