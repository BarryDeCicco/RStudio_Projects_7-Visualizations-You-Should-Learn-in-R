# File 3 - Bar Charts, Stacked Charts

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

# this will show the number of Big Marts established each year,
# using Outlet_Establishment_Year

ggplot(BigMartData, aes(Outlet_Establishment_Year)) + geom_bar(fill = "red")+theme_bw()+
  scale_x_continuous("Establishment Year", breaks = seq(1985,2010)) + 
  scale_y_continuous("Count", breaks = seq(0,1500,150)) +
  coord_flip()+ labs(title = "Bar Chart") + theme_gray()

# The coord_flip causes the original vertical bar chart to become horizontal;
# removing it results in a vertical bar chart.  The fill has also been changed:

# When graphing a continuous variable , use a function within geom_bar():

ggplot(BigMartData, aes(Item_Type, Item_Weight)) + geom_bar(stat = "identity", 
                                                      fill = "darkblue") + 
  scale_x_discrete("Outlet Type")+ scale_y_continuous("Item Weight", 
                                                      breaks = seq(0,15000, 
                                                                   by = 1000)) + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) + 
  labs(title = "Bar Chart")

# A warning that 1463 rows were deleted for missing values (position_stack) 
# I can't find this variable within the data set.

###########  Stacked Bar Chart

# This allows use of two categorical variables, and is accomplished through.
# the fill option within aes():

ggplot(BigMartData, aes(Outlet_Location_Type, fill = Outlet_Type)) + geom_bar()+
  labs(title = "Stacked Bar Chart", x = "Outlet Location Type", 
       y = "Count of Outlets")


