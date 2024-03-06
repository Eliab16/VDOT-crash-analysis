
# Virginia vehicle crash analysis-(2020-2022) capstone project for part time data analytics cohort #10 program at Nashville Software School.

## Motivation
I Live in Northern Virginia, I have personally witnessed the consequences of traffic accidents on individuals and families. The frequent news reports of accidents and the statistics on fatalities and injuries are not mere numbers-they represent real lives and significant public health issue; this has instilled in me a sense of urgency and purpose to address this problem in meaningful way. Furthermore, the availability of comprehensive traffic accident data from the Virginia department of transportation provides an excellent opportunity to conduct in-depth analysis.

## Data cleaning
- Data Type Standardization
- Column Removal
- Duplicate Row Removal
- Null value Handling
- Name Error correction
- link for SQL clean up scripts used https://github.com/Eliab16/VDOT-crash-analysis/tree/main/script

## Data Questions
-  What are the primary contributing factors to crashes in Virginia? 
-  What is the distribution of fatality rate across Virginia counties, and which counties exhibit the highest fatalities rate?
-  What are the external factors to crashes in Virginia, such as alcohol, bike, distracted, 'drowsy, drug, ‘hit and run, large truck?
-  How has the frequency and severity of crashes varied over time? 
-  What are the differences in crash pattern based on the presence of work zones and school zones? 
-  Are there distinct patterns in crash occurrences and severity based on the age groups of those involved (senior vs young)?
-  Investigate the types of collision, the number of vehicles involved, and factors such as weather condition, road surface, road defects and assess if these factors vary based on area type urban/rural classification.

## Known Issues and Challenges
## Data Sources and Tools
- Business dataset: https://data.virginia.gov/Transportation/Open-View-VA-Department-of-Transportation-Crash-Data/q3i7-ztj9/about_data
- Secondary dataset: https://data.virginia.gov/dataset/county

## Tools
- PostgreSQL for data cleaning 
- Excel for data preview
- Python/Jupyter Notebooks for visualization and analysis

## Executive summery
This report summarizes the findings from an analysis of traffic crash data in Virginia, obtained both data from virginia.gov.
and my secondary dataset in shape format. My focus was to determine the distribution of crashes across various counties, both.
in urban and rural settings and uncovered pattern based on time(seasonality), demographics(age),external factors contributing to
crashes and crash severity for the years 2020 to 2022.

### Examples of analysis charts
![Crash frequency over time](images/CRASH2.png "Crash frequency over time")
![Crash severity by age group](images/YOUNG.png "Crash severity by age group")
![Crash occurrence factors](images/FACTORS-EX.png "Crash occurrence factors")
![Total crash frequency](images/DENSITY.png "Total crash frequency")

## Conclusion
 Here is the link to analysis power point slides [VA crash analysis pptx](https://github.com/Eliab16/VDOT-crash-analysis/blob/main/VDOT%20crash%20analysis.pptx)
