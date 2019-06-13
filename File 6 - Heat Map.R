# File 6 - Heat Map

# This is from https://www.tatvic.com/blog/7-visualizations-learn-r/

ggplot(BigMartData, aes(Outlet_Identifier, Item_Type))+
  geom_raster(aes(fill = Item_MRP))+
  labs(title ="Heat Map", x = "Outlet Identifier", y = "Item Type")+
  scale_fill_continuous(name = "Item MRP") 