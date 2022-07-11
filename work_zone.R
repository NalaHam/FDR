library(tidyverse)

expected <- 0.61654709279636

unique(gene_mut_count_sex$p_value)
range(gene_mut_count_sex$p_value)

small_p <- subset(gene_mut_count_sex, p_value <= 0.05)

row.names(small_p) <- c(1:295)

small_p <- small_p[order(small_p$p_value),]

df <-data_frame[order(data_frame$c1),]

dplyr::mutate

dat_rank <- small_p %>% 
  arrange(p_value) %>% 
  mutate(Rank = 1:n())










