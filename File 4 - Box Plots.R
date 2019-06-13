# File 4 - Box Plots

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

# Box plots combine categorical and continuous variables.
# This is accomplished with the geom_boxplot() function.

ggplot(BigMartData, aes(Outlet_Identifier, Item_Outlet_Sales)) + 
  geom_boxplot(fill = "red")+
  scale_y_continuous("Item Outlet Sales", breaks= seq(0,15000, by=1000))+
  labs(title = "Box Plot", x = "Outlet Identifier")
