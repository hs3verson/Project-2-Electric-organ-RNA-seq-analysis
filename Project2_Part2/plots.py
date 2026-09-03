#!/usr/bin/env python

import matplotlib.pyplot as plt
import pandas as pd

# SRR25630385
SRR385_1 = "/projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/sorted_dists/SRR25630385_1_dist.txt"
SRR385_2 = "/projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/sorted_dists/SRR25630385_2_dist.txt"
combined_385 = pd.concat([SRR385_1, SRR385_2], keys=['SRR385_1', 'SRR385_2'])


plt.bar()


# Concatenate data sets
combined_data = pd.concat([set1, set2], keys=['set1', 'set2'])