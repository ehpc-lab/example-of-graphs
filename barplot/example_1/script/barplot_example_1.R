##### Loading libraries ####
library(tidyverse)
##### Loading libraries ####


##### Loading data ####
data_example <- readr::read_csv(file = "data/data_example.csv")
##### Loading data ####


##### Barplot code ####
ggplot(data = data_example, aes(x = Groups, y = Size, fill = Features)) +
  geom_bar(stat = "identity") +
  theme_bw() + # Background theme
  theme(text = element_text(size = 12), # Change size of font to 12
        axis.text.x = element_text(angle = 45, hjust = 1), # Change the axis-x title to 45 degree angle
        legend.position = "top",
        panel.grid = element_blank())
##### Dotplot code ####


##### Save plot in PNG, PDF or SVG files ####
ggsave(filename = "barplot_example.png")
ggsave(filename = "barplot_example.pdf")
##### Save plot in PNG, PDF or SVG files ####
