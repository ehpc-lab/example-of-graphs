##### Loading libraries ####
library(tidyverse)
##### Loading libraries ####


##### Loading data ####
data_example <- readr::read_csv(file = "data/data_example.csv")
##### Loading data ####


##### Barplot code ####
ggplot(data = data_example, aes(x = Groups, y = Size, fill = Features)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = format(Size, digits = 3)), position = position_stack(vjust =  0.5)) + # Geom layer to add text in the plot
  theme_bw() + # Background theme
  theme(text = element_text(size = 12), # Change size of font to 12
        axis.text.x = element_text(angle = 45, hjust = 1), # Change the axis-x title to 45 degree angle
        legend.position = "top",
        panel.grid = element_blank())
##### Dotplot code ####


##### Save plot in PNG, PDF or SVG files ####
ggsave(filename = "barplot/example_2/barplot_example2.png")
ggsave(filename = "barplot/example_2/barplot_example2.pdf")
##### Save plot in PNG, PDF or SVG files ####
