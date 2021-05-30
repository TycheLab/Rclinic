# clinic_test_repo

This repository will hold questions about problems using **R**, submitted by users, who
are working in hydrological sciences. The questions will be turned into solutions,
which will be stored in the same repository, providing a library of solutions
to **R** problems. 


# Guide on how to post problems

Please make a copy of the file `"R_problem.Rmd"`, with a new name, which
explains your issue, such as `"get_yearly_monthly_mean_values.Rmd"`. This
is a file written in **Rmarkdown**, which is used to create **R** notebooks.
You can edit these files in **RStudio**, or in any text editor.
More information about **Rmarkdown** is available from ![](https://cran.r-project.org/web/packages/rmarkdown/vignettes/rmarkdown.html)

Fill in the new document, explaining your issue, and providing examples of
the code which is causing problems, or isn't working.

The document has the following sections to be filled in.

* **Name and email**: These are optional, but will enable us to contact you if there are any
questions. All names and emails will be deleted from the .Rmd files when
the solutions are posted.
* **Data** Your examples will probably need some data. Please describe the data set here.
Note that there are many built-in data sets, which you can see using the
`data()` command. If you do need to include a data set, please make it as 
small as possible. Also, please omit the path to the file, as the data
file will be stored in the same location as the problem .Rmd file.  
You can also can also read data from a URL:
`dataframe <- read.csv("http://some.site.net/data/daily_flows.csv")`   
Please ensure that none of the data you submit contains any confidential information.


* **Problem statement** Please be as specific as possible, so that we can best understand the issue.
A good problem statement would be something like:  
"When I try to do this, I get x. However, I'm really trying to get y".  
or  
"Given a data frame of daily dates and flow values, how do I get monthly and yearly mean values by the hydrological year?"  


* **Example(s)** The example(s) of the problem are placed in an R "chunk", which is everything
between the "\`\`\`{r}" and "\`\`\`". Please include lots of comments, either before 
or after the chunk, or inside the chunk prefaced with "#", e.g.:  
`This example gives mean values by calendar month (Jan, Feb, etc.) for all years, but
I need mean values by hydrological year and month.`  

 ```{r}   
 
 `# This statement gives me means by month`  
 
`flows$monthly <- aggregate(flows$daily_flow, by = flows$month, FUN = "mean")`

  ```  
  
  
# Contributing solutions 

Anybody can contribute solutions to the submitted problems! Once all problems are submitted, a github issue will be opened for each problem: there the clinic coordinators and any other volunteer can discuss possible solutions and can assign each problem to a specific person who will then be responsible for finalising the solution which will be uploaded as the final solution. Typically the assignee would be a member of the clinic team, but any other volunteer with knowledge of how to solve any of the problems and willing to contribute can add to the issue discussion and eventually be responsible for the final solution. 


# Code of conduct 

All users involved in the clinic, either by sumbitting questions or contributing solutions, are required to follow the proejct's [code of conduct](https://github.com/strnda/clinic_test_repo/blob/main/CODE_OF_CONDUCT.md). By contributing to this project, you agree to abide by its terms.
