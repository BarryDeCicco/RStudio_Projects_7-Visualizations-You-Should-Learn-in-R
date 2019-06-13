# File 2 - Histogram

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

# From our mart dataset, if we want to know the count of items on basis of their cost, 
# then we can plot histogram using continuous variable Item_MRP as shown below.

# A histogram is obtained by swapping out geom_point() for geom_histogram()
# the x and y scales are set to be continuous

ggplot(BigMartData, aes(Item_MRP)) + geom_histogram(binwidth = 2)+
  scale_x_continuous("Item MRP", breaks = seq(0,270,by = 30))+
  scale_y_continuous("Count", breaks = seq(0,200,by = 20))+
  labs(title = "Histogram")