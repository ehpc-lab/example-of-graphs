##### Loading libraries ####
library(tidyverse)
##### Loading libraries ####


##### Loading data ####
readr::write_csv(x = data_example, file = "D:/OneDrive - Nexus365/EHPC-Lab/examples-of-graphs/dotplot/example_1/data_example.csv")
##### Loading data ####


data_example <- data.frame(
  Groups   = c("A", "A", "A", "B", "B", "B", "C", "C", "C"),
  Features = c("Feature 1", "Feature 2", "Feature 3", "Feature 1", "Feature 2", "Feature 3", "Feature 1", "Feature 2", "Feature 3"),
  Values   = rnorm(n = 9, mean = 0,  sd = 2),
  Pvalues  = c(0.01, 0.4, 0.05, 0.01, 0.4, 0.05, 0.01, 0.4, 0.05),
  Size     = rnorm(n = 9, mean = 50, sd = 5)
)


##### Subsetting data based on pvalue ####
data_example_sig <- data_example %>% dplyr::filter(Pvalues < 0.05)
##### Subsetting data based on pvalue ####


##### Dotplot code ####
ggplot(data = data_example, aes(x = Groups, y = Features, color = Values, size = Size)) +
  geom_point() +
  geom_point(data = data_example_sig, fill = NA, color = "black", shape = 21, stroke = 0.8) + # geom_point for pvalue or padj significance
  theme_bw() + # Background theme
  theme(text = element_text(size = 12), # Change size of font to 12
        axis.text.x = element_text(angle = 45, hjust = 1), # Change the axis-x title to 45 degree angle
        legend.position = "top",
        panel.grid = element_blank()) + # Remove lines for minor and major grid
  scale_color_gradient2(midpoint = 0, low = "blue", mid = "white", high = "red") # Change the color scale to blue, white and red
##### Dotplot code ####


##### Save plot in PNG, PDF or SVG files ####
ggsave(filename = "dotplot_example.png")
ggsave(filename = "dotplot_example.pdf")
##### Save plot in PNG, PDF or SVG files ####
