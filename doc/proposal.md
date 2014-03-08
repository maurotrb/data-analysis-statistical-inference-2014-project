Data Analysis and Statistical Inference Project Proposal
========================================================

Research Question
-----------------

### Question and Evaluation

#### Question
In one sentence, what is your research question?

#### Evaluation
Do you understand the research question? How can the question be made clearer?
Is it clear how data can be used to answer this research question as its phrased?

### Answer
Is there a relationship between degree obtained and family income in constant dollars?

Data - Citation
---------------

### Question and Evaluation

#### Question
Include a citation for your data, and if your data set is online, provide a link to the source.

#### Evaluation
Is there a citation for the data? If there is a link provided, does it bring you to the data?

### Answer
General Social Survey Cumulative File, 1972-2012 Coursera Extract.
Modified for Data Analysis and Statistical Inference course (Duke University).

R dataset could be downloaded at `http://bit.ly/dasi_gss_data`.

Citation for the original data:

    Smith, Tom W., Michael Hout, and Peter V. Marsden. General Social Survey, 1972-2012 [Cumulative File]. ICPSR34802-v1.
    Storrs, CT: Roper Center for Public Opinion Research, University of Connecticut /Ann Arbor, MI: Inter-university Consortium
    for Political and Social Research [distributors], 2013-09-11. doi:10.3886/ICPSR34802.v1
    Persistent URL: http://doi.org/10.3886/ICPSR34802.v1

Data - Collection
-----------------

### Question and Evaluation

#### Question
Describe how the data were collected.

#### Evaluation
Is the data collection explained clearly?

### Answer
The study spans 40 years and nearly every decade the collection process was modified
(see http://publicdata.norc.org:41000/gss/documents//BOOK/GSS_Codebook_AppendixA.pdf
for details).

The data were collected from United States' metropolitan and rural areas with
household interview.
Multiple level of stratification for region, race, age, income and sex was employed to
guarantee a random sample.
Each year were collected about 1500-2000 cases, with a slight increment in recent years.

Data - Cases (observational/experimental units)
-----------------------------------------------

### Question and Evaluation

#### Question
What are the cases? (Remember: case = units of observation or units of experiment)

#### Evaluation
Are the cases (the units of observation or experimental units) explained clearly?

### Answer
The cases are adult persons resident in United States and interviewed in their
household.

Data - Variables
----------------

### Question and Evaluation

#### Question
What are the two variables you will be studying? State the type of each variable.

#### Evaluation
Are the variable types identified accurately?

### Answer

#### Degree
Answer to the question: "Did you ever get a high school diploma or a GED certificate?".

Type of variable: categorical, ordinal.

Levels: Lt High School, High School, Junior College, Bachelor, Graduate

#### Family Income in Constant Dollars
Inflation-adjusted family income.

Type of variable: numerical, continuous.

Data - Type of study
--------------------

### Question and Evaluation

#### Question
What is the type of study? Is it an observational study or an experiment?
Explain how you've arrived at your conclusion using information on the sampling
and/or experimental design.

#### Evaluation
Is the type of study identified correctly? Is the supporting information on the
sampling and/or experimental design of the study satisfactory for making the
decision on the type of study?

### Answer
The study consists in interviews to a random sample of United States residents
about their economic condition, their working status, their health, their beliefs,
etc. So the study is observational.

Data - Scope of inference - generalizability
--------------------------------------------

### Question and Evaluation

#### Question
Identify the population of interest, and whether the findings from this analysis
can be generalized to that population, or, if not, a subsection of that population.
Explain why or why not.
Also discuss any potential sources of bias that might prevent generalizability.

#### Evaluation
Did the writer correctly identify the population of interest? Did the writer
correctly decide whether the findings from this analysis can be generalized to
that population, or, if not, a subsection of that population? Is their explanation
satisfactory to make this decision? Are potential sources of bias discussed,
and if so, is the discussion satisfactory?

### Answer
The population of interest is composed by all United States residents.
The study employed random sampling, so the results could be generalized
to the entire the population.

Data - Scope of inference - causality
-------------------------------------

### Question and Evaluation

#### Question
Can these data be used to establish causal links between the variables of interest?
Explain why or why not.

#### Evaluation
Did the writer identify correctly whether these data be used to establish causal
links between the variables of interest. Is the explanation satisfactory?

### Answer
The study is observational, so we can only establish association links and not
causal ones between the variables of interest.

Exploratory Data Analysis
-------------------------

### Question and Evaluation

#### Question
Perform a brief exploratory data analysis - just one or two relevant descriptive
statistics and visualizations of the data. Also address what the exploratory data
analysis suggests about your research question.
You can include summary statistics in your write up in the space provided below
by copying and pasting the R output, however you must upload your plot(s) as a
separate PDF or image file. Make sure to provide a discussion/interpretation of
any summary statistic or plot you include.
Note: This is not required to be an exhaustive exploratory data analysis (you can
save that for the second phase), instead it's just intended to ensure that you
have successfully imported your data set into R such that you can produce plots
and numerical summaries.

#### Evaluation
Have relevant summary statistics been produced and discussed?
Is there a visualization of the data, and has it been interpreted properly?

### Answer
The dataset, with only the degree and conint columns and filtered for NAs values,
has 50393 cases.

#### Degree
Degree is a categorical variable. We summarize it with table and barplot.

    ## 
    ## Lt High School    High School Junior College       Bachelor       Graduate 
    ##          10268          26381           2804           7374           3566

![](../graphs/expl-proposal_degree.png)

We can see that more than a half of cases have high school as their highest degree.

#### Family Income in constant USD
Family Income in constant USD is numerical continuous variable. We summarize it
with summary and histogram.

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##     383   18500   36100   44900   59500  180000

![](../graphs/expl-proposal_conint.png)

We can see that the distribution is right skewed and slightly bimodal. 50% of
the observations are in the 18,500-59,500 USD (constant dollar) range.

#### Is there a relationship between degree obtained and family income in constant dollars?
To explore the relationship between a categorical and a numerical variable we use
a boxplot comparison.

![](../graphs/expl-proposal_degree_coninc.png)

We can see a positive association between family income and degree: to a higher
degree corresponds a higher median family income.

But the wider interquantile range in the higher degree categories and the higher
number of outliers in the lower degree ones, means that such a relationship is
not strong and that family income could be associated with other variables.

Data Set
--------

### Question and Evaluation

#### Question
Attach a page of your data set that includes all of the relevant columns.
You do not need to include all of the data; one page is sufficient.

#### Evaluation
Is there a data set present?  Can you see all of the relevant columns?

### Answer

    ##    Highest.Degree Family.Income.Constant.USD
    ## 1        Bachelor                      25926
    ## 2  Lt High School                      33333
    ## 3     High School                      33333
    ## 4        Bachelor                      41667
    ## 5     High School                      69444
    ## 6     High School                      60185
    ## 7     High School                      50926
    ## 8        Bachelor                      18519
    ## 9     High School                       3704
    ## 10    High School                      25926
    ## 11    High School                      18519
    ## 12 Lt High School                      18519
    ## 13 Lt High School                      18519
    ## 14 Lt High School                      18519
    ## 15 Lt High School                      25926
    ## 16    High School                      18519
    ## 17    High School                      33333
    ## 18 Lt High School                      25926
    ## 19       Bachelor                      60185
    ## 20    High School                      69444
    ## 21    High School                      50926
    ## 22    High School                      83333
    ## 23    High School                      18519
    ## 24    High School                      25926
    ## 25       Bachelor                      41667
    ## 26    High School                      41667
    ## 27    High School                      41667
    ## 28    High School                      41667
    ## 30 Lt High School                      41667
    ## 31 Lt High School                      33333
    ## 32    High School                      33333
    ## 33       Bachelor                      41667
    ## 34 Lt High School                       3704
    ## 35    High School                      18519
    ## 36    High School                      41667
    ## 37    High School                      69444
    ## 38 Lt High School                      41667
    ## 39 Lt High School                      25926
    ## 40    High School                      18519
    ## 41 Lt High School                       3704