library(phangorn)

# Reading in files

# A) Locate the file on your computer
file <- file.choose()
# on my machine file is: "/home/klaus/Downloads/UndB_align.fasta"
UndB <- read.phyDat(file, type="AA", format="fasta")
# read it in directly with the absolute path
UndB <- read.phyDat("/home/klaus/Downloads/UndB_align.fasta",
                    type="AA", format="fasta")
# B) relative path to your working directory
# Place the file in the data folder
UndB <- read.phyDat("UndB_align.fasta", type="AA", format="fasta")

# C) read directly from github
# Find the file and click on raw
UndB <- read.phyDat("https://raw.githubusercontent.com/KlausVigo/Mol981_2026/refs/heads/main/data/UndB_align.fasta",
                    type="AA", format="fasta")


# Fast overview
image(UndB)

# Change the margin
par(mar=c(4,12,4,2))
# the values descrive the margin at bottom, left, top and right.
# We increase the value at the left

# plot on the first 20 sequences and only residues 100 to 200
# cheange the color scheme to "Clustal" and print the amino acids
image(UndB[1:20, 101:200], scheme="Clustal", show.aa=TRUE)
