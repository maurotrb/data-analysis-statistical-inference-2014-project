# Set working directory
#setwd('./src/')

# Load packages
require(knitr)

# Create .md, .html, and .pdf files
knit("data-analysis.Rmd")
system("pandoc --latex-engine=xelatex --highlight-style=haddock --number-sections -V geometry:vmargin=.75in -V geometry:hmargin=.5in -s data-analysis.md -o data-analysis.pdf")
