# File 5 - Area Chart

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

ggplot(BigMartData, aes(Item_Outlet_Sales)) + geom_area(stat = "bin", bins = 30, 
                                                  fill = "steelblue") + 
  scale_x_continuous(breaks = seq(0,11000,1000))+ 
  labs(title = "Area Chart", x = "Item Outlet Sales", y = "Count") 

