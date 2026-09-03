setwd("/Users/hansev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/sorted_dists")

library(ggplot2)
library(dplyr)

A1 = read.table("SRR25630385_1_dist.txt")
A2 = read.table("SRR25630385_2_dist.txt")
B1 = read.table("SRR25630409_1_dist.txt")
B2 = read.table("SRR25630409_2_dist.txt")

A_combined = bind_rows("R1" = A1, "R2" = A2, .id = "Read")

ggplot(A_combined, aes(x=V2, y=log(V1), color=Read)) +
  geom_point(alpha=0.5) +
  scale_y_continuous(trans="log10") +
  theme_bw() +
  labs(
    title = "Distribution of Read Lengths for SRR25630385 Post-Trimming",
    x = "Read Length (bp)",
    y = "Frequency of Read Length (Log Scale)"
  ) +
  scale_color_manual(values=c("cornflowerblue", "coral")) +
  scale_fill_manual(values=c("cornflowerblue", "coral"))

ggsave("SRR25630385.png")

B_combined = bind_rows("R1" = B1, "R2" = B2, .id = "Read")

ggplot(B_combined, aes(x=V2, y=log(V1), color=Read)) +
  geom_point(alpha=0.5) +
  scale_y_continuous(trans="log10") +
  theme_bw() +
  labs(
    title = "Distribution of Read Lengths for SRR25630409 Post-Trimming",
    x = "Read Length (bp)",
    y = "Frequency of Read Length (Log Scale)"
  ) +
  scale_color_manual(values=c("cornflowerblue", "coral")) +
  scale_fill_manual(values=c("cornflowerblue", "coral"))

ggsave("SRR25630409.png")