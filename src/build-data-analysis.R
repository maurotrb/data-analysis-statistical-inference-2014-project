# Set working directory
#setwd("./src/")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("data-analysis.Rmd")
markdownToHTML('data-analysis.md', 'data-analysis.html', options=c("use_xhml"))
system("pandoc -V geometry:vmargin=.75in -V geometry:hmargin=.5in -s data-analysis.html -o data-analysis.pdf")
