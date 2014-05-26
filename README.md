Data Analysis and Statistical Inference - Project
=================================================

Project of [Data Analysis and Statistical Inference course on Coursera](https://www.coursera.org/course/statistics), February 2014 edition.

## About the project

The project studies the relationship between the highest degree earned by United
States residents and their family income in constant dollars.

Access to education and its funding is the subject of many discussions on social
mobility and redistribution of income. The study explores data from a long running
social survey to verify one of the main topic of these discussions: if family
income is related to education level.

The study uses [General Social Survey (GSS)](http://www3.norc.org/gss+website/)
data for the year 2012.

## What you find in this repository

A [RStudio](https://www.rstudio.com/) project with code tree organized with 
[ProjectTemplate](http://projecttemplate.net/).

The main files are:

* __README.md:__ this file
* __data/statistic_project_gss.Rdata__: raw data in R format
* __LICENSE__: copyright and license information
* __build-data-analysis.R__: R script to create the analysis document in md, html and pdf format
* __data-analysis.Rmd__: analysis document in R markdown format

## How to create the analysis document

You have to install [R](http://www.r-project.org/), [RStudio](https://www.rstudio.com/),
[ProjectTemplate](http://projecttemplate.net/), [knitr](http://yihui.name/knitr/), and
[Pandoc](http://johnmacfarlane.net/pandoc/) with a [LaTeX](http://www.latex-project.org/)
distribution that supports [XeLaTeX](http://scripts.sil.org/xetex) engine.

To create the document:

1. clone this repository
4. open RStudio or a R console and set the working directory to `src` directory (use setwd())
5. source `build-data-analysis.R` script

In the `src` directory you find the files `data-analysis.md`, `data-analysis.html`, `data-analysis.pdf`.
