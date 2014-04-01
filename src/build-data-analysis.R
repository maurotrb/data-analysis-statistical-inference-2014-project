# Set working directory
#setwd("./src/")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("data-analysis.Rmd")
#markdownToHTML('data-analysis.md', 'data-analysis.html', options=c("use_xhml"))
system("pandoc --latex-engine=xelatex --no-highlight --number-sections -V geometry:vmargin=.8in -V geometry:hmargin=.5in -s data-analysis.md -o data-analysis.pdf")
