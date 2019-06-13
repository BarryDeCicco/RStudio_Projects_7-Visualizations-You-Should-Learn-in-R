# File 1 - Scatterplot

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

# I needed to reinstall because Rcpp and tibble were not installed -
# are they new dependencies?

library(ggplot2)  

ggplot(BigMartData, aes(Item_Visibility, Item_MRP)) + geom_point() + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+ 
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw() 

# Adding a categorical variable - Item_Type (in geom_point):

ggplot(BigMartData, aes(Item_Visibility, Item_MRP)) + 
  geom_point(aes(color=Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+ 
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw() 

# Breaking the plot into sub-plots, by Item_Type, by adding
# a title ("Scatterplot") and facet_wrap.
# I also fiddled with the scale ticks and labels for legibility.

ggplot(BigMartData, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.40,0.10))+
  scale_y_continuous("Item MRP", breaks = seq(0,300,by = 50))+ 
  theme_bw() + labs(title="Scatterplot") + facet_wrap( ~ Item_Type)


