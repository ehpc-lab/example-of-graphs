##### Loading libraries ####
library(tidyverse)
##### Loading libraries ####


##### Loading data ####
data_example <- readr::read_csv(file = "data/data_example.csv")
##### Loading data ####


##### Subsetting data based on pvalue ####
data_example_sig <- data_example %>% dplyr::filter(Pvalues < 0.05)
##### Subsetting data based on pvalue ####


##### Dotplot code ####
ggplot(data = data_example, aes(x = Groups, y = Features, color = Values, size = Size)) +
  geom_point() +
  geom_point(data = data_example_sig, fill = NA, color = "black", shape = 21, stroke = 0.8) + # geom_point for pvalue or padj significance
  theme_bw() + # Background white theme
  theme(text = element_text(size = 18), # Change size of font to 18
        axis.text.x = element_text(angle = 45, hjust = 1), # Change the axis-x title to 45 degree angle
        legend.position = "top",
        panel.grid = element_blank()) + # Remove lines for minor and major grid
  scale_color_gradient2(midpoint = 0, low = "blue", mid = "white", high = "red") # Change the color scale to blue, white and red
##### Dotplot code ####


##### Save plot in PNG, PDF or SVG files ####
ggsave(filename = "dotplot_example.png")
ggsave(filename = "dotplot_example.pdf")
##### Save plot in PNG, PDF or SVG files ####

