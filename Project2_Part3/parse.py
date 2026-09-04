#!/usr/bin/env python

import argparse

def get_args():
	parser = argparse.ArgumentParser(description="A program to specify input SAM files")
	parser.add_argument("-f", "--sam_file", type=str)
	return parser.parse_args()

args = get_args()


mapped_count = 0
unmapped_count = 0

with open(args.sam_file, "r") as fh:
    for line in fh:      # iterate over each line of the SAM file
        if not line.startswith("@"):      # if the line is not a header line
            tabs = line.strip().split("\t")      # create a list called tabs that strips the line and separates each field as individual items in list
            flag = tabs[1]      # define the flag field as the str at position 1 in the tabs list
            if((int(flag) & 4) != 4):      # convert flag from str to int, if flag & 4 does not equal 4, read is mapped
                if ((int(flag) & 256) != 256):       # if flag & 256 does not equal 256, sequence is not aligned more than once
                    mapped_count += 1                # add 1 to mapped counter
            else:                                    # if flag & 4 does equal 4, read is unmapped
                if ((int(flag) & 256) != 256):       # if flag & 256 does equal 256, sequence is aligned more than once
                    unmapped_count += 1              # add 1 to unmapped counter
print(mapped_count)
print(unmapped_count)
