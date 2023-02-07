# Module 9 Challenge


## Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modelling, data engineering, and data analysis, respectively.

## Data Modelling



### Some Questions of Interest:

• What are the most in demand jobs of today? 

• What are the in-demand jobs of the future? 

• Which companies are the best to land for an in-demand job, based on reputation/reviews?

• If I found myself unemployed, in which area is of high shortage where could I land on my feet? 

• Will my role be relevant in the next 10 years?



## Information from National Skills Commission [1]

Source: National Skills Commission, Skills Priority List, 2022

The 2022 SPL is based on the Australian and New Zealand Standard Classification of Occupations (ANZSCO), 2021 Australian Update
This document records findings from the Skills Priority List 2022. Please note that this document is intended to provide a summary of some the information and evidence considered for each individual occupation and should be read with the Skills Priority List Methodology for context. The methodology is available on the NSC website at https://www.nationalskillscommission.gov.au/skills-priority-list. 

### SPL Overview
The National Skills Commission has responsibility for providing trusted and independent intelligence on Australia’s labour market. A key deliverable for the NSC in this role is the Skills Priority List.

The SPL provides a detailed view of occupations in shortage, nationally, and by state and territory, as well as the future demand for occupations in Australia. The list is a single source of intelligence on occupations in shortage. While the SPL helps inform advice on the targeting of policy initiatives, it is important to note that it is not the only input into any such advice. 
The list and occupation assessments are determined through extensive statistical analysis of the labour market, employer surveys, and broad stakeholder engagement with peak bodies, industry groups, professional associations, unions, regional representative bodies and major employers in the Australian labour market, combined with consultations with federal, state and territory governments.
The SPL is reviewed and updated annually. Additional reports based on the SPL will be published on the NSC website.

### Labour Market Rating definitions
Taking account of all available information, a labour market rating is determined for each occupation.
Ratings are provided nationally, and for each state and territory, where sufficient evidence is available. Where there is evidence suggesting variation between metropolitan and regional locations this is reflected in the rating. The term metropolitan area refers to state and territory capital cities and regional refers to the rest of the state or territory.
An occupation may be assessed as being in shortage even though not all specialisations are in shortage. Similarly, a rating of national shortage does not mean that employers in every geographical location have difficulty recruiting. While an occupation can be considered in shortage, it is still possible that job seekers can face significant competition for positions (due to the level of experience or specialisations required). Similarly, employers can still have difficulty recruiting for occupations that are not in shortage.
The SPL provides the following ratings of the current labour market for occupations where sufficient data are available to make an assessment.

#### Shortage (S)
Shortages exist when employers are unable to fill or have considerable difficulty filling vacancies for an occupation, or significant specialised skill needs within that occupation, at current levels of remuneration and conditions of employment, and in reasonably accessible locations.
In some instances, shortages may be apparent in particular specialisations within the occupation, but otherwise shortages are not apparent. In these instances, provided there is sufficient evidence, the occupation will still be considered in shortage.

#### Metropolitan Shortage (M)
Shortages, (as defined above) are restricted to metropolitan areas.

#### Regional Shortage (R)
Shortages (as defined above) are restricted to regional areas.

#### No Shortage (NS)
Research has not identified any significant difficulty filling vacancies.
For some occupations, a lack of evidence overall will, by default, result in an occupation being rated as ‘No Shortage’. 


## Internet Vacancy Index [2]

The Internet Vacancy Index (IVI) is a monthly count of online job advertisements compiled by Jobs and Skills Australia (JSA). Data are available by occupational groups, skill level groups, state or territory and by regional areas.

JSA publishes seasonally adjusted IVI data to better show monthly fluctuations in job advertisements, which can be affected by seasonal factors and economic shocks such as the COVID-19 pandemic. There is some volatility in the IVI series month-on-month, particularly for results post-COVID-19, and as such results should be interpreted carefully.

### Profile and summary of ANZSCO structure [3]

The structure of ANZSCO has five hierarchical levels - major group, sub-major group, minor group, unit group and occupation. The categories at the most detailed level of the classification are termed 'occupations'. These are grouped together to form 'unit groups', which in turn are grouped into 'minor groups'. Minor groups are aggregated to form 'sub-major groups' which in turn are aggregated at the highest level to form 'major groups'.


Each major group comprises a different number of sub-major, minor and unit groups and occupations. The following table illustrates the distribution of these categories between the major groups.

One, two, three, four and six-digit codes are assigned to the major, sub-major, minor and unit groups, and occupations respectively.

Within each major group, the sub-major groups are ordered firstly by skill level and then alphabetically.

## How can we do to compilate/merge our different resources in just one common table? 

![image](https://user-images.githubusercontent.com/118531684/216253626-7e150796-0c9e-4252-913b-b4724d4afa31.png)

## Our Findings:

### Current National Labour Market Rating

![image](/Output_data/Current_National_Labour_Market_Rating.png)

NS	628	68.71%

S	278	30.42%

R	8	0.88%

### National Future Demand Rating

![image](/Output_data/National_Future_Demand_Rating.png)

Moderate	572	62.58%

Strong	234	25.60%

Soft	108	11.82%

### IVI Evolution over time per state

![image](/Output_data/IVI_Evolution_over_time_per_state.png)

IVI Values for Decemeber 2022

NSW	159,935	31%

VIC	137,086	26%

QLD	108,867	21%

WA	58,102	11%

SA	26,848	5%

ACT	14,591	3%

TAS	6,839	1%

NT	5,476	1%

### Highest IVI per Occupation Australia 

![image](/Output_data/IVI_Evolution_over_time_Australia.png)

Registered Nurses									124,516	41%

Software and Applications Programmers				35,875	12%

Retail Managers										24,792	8%

Metal Fitters and Machinists						20,514	7%

Child Carers										18,400	6%

Motor Mechanics										17,116	6%

Truck Drivers										16,735	5%

Advertising and Sales Managers						16,446	5%

Civil Engineering Professionals						15,205	5%

Architectural, Building and Surveying Technicians	14,763	5%

### Highest IVI filtered by Occupations in Shortage and High Future Demand in Australia 

![image](/Output_data/IVI_Evolution_over_time_Shortage_Demand.png)


Registered Nurses									124,516	64%

Software and Applications Programmers				35,875	19%

Electricians										6,360	3%

Contract, Program and Project Administrators		5,352	3%

Aged and Disabled Carers							5,162	3%

Child Carers										4,600	2%

ICT Business and Systems Analysts					3,481	2%

Civil Engineering Professionals						3,041	2%

Welfare Support Workers								2,756	1%

Early Childhood (Pre-primary School) Teachers		2,542	1%


### Highest IVI per Occupation per State and Highest IVI filtered by Occupations in Shortage and High Future Demand per State

Additional graphs per state are available in the presentation notebook https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work_presentation.ipynb for further reference.

## Evaluating future demand based on Internet Vacancy Index

To evaluate the future demand a Linear regression was perfomed on the IVI time series for each of the
most relevant occupations (Currently in Shortage and with strong Future demand)
The start of the series was chosen as Jul-2020 where all the IVI indexes start presenting an increasing tendency.
The IVI plot has been presented below again for visualisation of the point above: note that IVI for the different occupations reaches a minimum point in 2020 and starts increasing from Jul-2020

![image](/Output_data/IVI_Evolution_over_time_Shortage_Demand.png)

Some of the most relevant results are presented below. More linear regressions are available in the presentation notebook https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work_presentation.ipynb for further reference. The R for most of the regressions is well above 0.75 suggesting a string fit to a linear behavior. The average time to double the demand for the top occupations is almost 7 years.

### Registered Nurses projection

![image](/Output_data/Registered_Nurses.png)

The r-value is: 0.8610881233271541

7.5 Years required to double the demand. Registered Nurses demand will be 263690.0

### Aged and Disabled Carers projection

![image](/Output_data/Registered_Nurses.png)

The r-value is: 0.929867675405898

6.7 Years required to double the demand. Aged and Disabled Carers Demand demand will be 10302.0

### Child Carers projection

![image](/Output_data/Child%20Carers%20projection.png)

The r-value is: 0.9624984241675042

6.1 Years required to double the demand. Child Carers demand will be 9743.0


## Loading Glassdoor and Seek Information

Data from the sites below was used for the following analysis

Glassdoor Job Reviews - A large dataset of job reviews with textual features and numerical targets: 
    https://www.kaggle.com/datasets/davidgauthier/glassdoor-job-reviews (glassdoor_reviews.csv)

Salaries and Job Postings by Company in Australia - Uncovering Industry Trends and Analysing Companies’ Salary Structures: 
    https://www.kaggle.com/datasets/thedevastator/analyzing-the-salaries-and-job-postings-in-aust (seek_Australia.csv)

The data bases contained over 500,000 records and had to be matched to location to extract only what pertained to Australia.

### Glassdoor Data - Reviews

Below are the screen shots of the points that matched a search on the below descriptions for Australia and its states

 "australia|victoria|tasmania|new south wales|northern territory|queensland|act|capital territory|nsw|vic|qld|sa|wa|tas|nt"

 The coordinates per location were obtained and only the information for Australia was analysed.

 ![image](/Output_data/Glassdoor_Data_Pre_Filtering.png)

 After filtering

 ![image](/Output_data/Glassdoor_Data_Filtered.png)


The top 10 companies obtained based on overall reviews after filtering were:

 ![image](/Output_data/Top_10_Companies.PNG)

 Further information state by state is available in the presentation notebook https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work_presentation.ipynb .

 ### Seek Data - Ads per Industry 

  The coordinates per location were obtained and only the information for Australia was analysed. 

![image](/Output_data/Seek_Data_Pre_Filtering.png)

After 2 rounds of filtering the below coordinates were obtained.

![image](/Output_data/Seek_Data_Filtered.png)

The resulting number of ads per industry is below:

![image](/Output_data/Number_Seek_ads_per_Industry.png)

Trades & Services                         3,248

Information & Communication Technology    2,595

Healthcare & Medical                      2,255

Manufacturing, Transport & Logistics      2,167

Administration & Office Support           1,693

Accounting                                1,595

Sales                                     1,435

Hospitality & Tourism                     1,418

Construction                              1,270

Education & Training                      1,168

Government & Defence                      1,143

Retail & Consumer Products                 942

Community Services & Development           876

Engineering                                819

Mining, Resources & Energy                 815

Call Centre & Customer Service             706

Banking & Financial Services               693

Marketing & Communications                 679

Human Resources & Recruitment              674

Real Estate & Property                     579

Legal                                      579

Design & Architecture                      289

Insurance & Superannuation                 254

Advertising, Arts & Media                  160

Consulting & Strategy                      155

Science & Technology                       138

Sport & Recreation                         134

Farming, Animals & Conservation            100

CEO & General Management                    86

Self Employment                             15


# Conclusion of findings:

Based on our findings, we can provide a data driven response to the following questions:

What are the most in demand jobs today?

	• Registered Nurses
	• Software & Applications Programmers
	• Retail Managers
	• Metal Fitters and Mechanics
	• Child Carers

What are the most in demand jobs for the future?

	• Registered Nurses
	• Software & Applications Programmers
	• Electricians
	• Contract, Program and Project Administrators
	• Aged and Disabled Carers

What are the best companies to work for based on reviews/salaries?

Based on the data available, we have concluded that there is not enough evidence available to suggest a top 10 for best reviewed companies.

So if I was looking for work, what role should I get? 

Data shows that in terms of demand for today and future, the top 2 jobs are Registered Nurses and Software & Applications programmers. You could make the choice of studying for a role in either of the top 5 jobs of the future or upskill in the top 5 jobs of today.

Way Forward…

• Some Questions of Interest…
	
	• What skills does the average Australian need to land these in demand jobs? 
	
The Australian Skills Classification (ASC) is a product of the National Skills Commission, within the Commonwealth of Australia. They have determined the core competencies, specific tasks and technology tools by ANZSCO code. This can be tied to our findinngs to provide support on what's needed Skillswise for a given occupation.
	
	• Which jobs are paying the highest salaries? 

The data from Seek, Glassdoor or any other source could be matched to an ANZCO code using an algorithm to extract information from the job title and Industry to provide the tying element to our results above.


All the information acquired can support people who want to change their current roles, who want to upskill to head in new directions or to school students who want to know where to aim their efforts given their preferences.




## Submission

1. Submitted and available in GitHub under https://github.com/lcardsvr/Project-1---Looking-for-work-

2. Presentation notebook available under https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work_presentation.ipynb

3. Scratch pad with more calculations, further summaries and datasets including the The Australian Skills Classification (ASC) information available under https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work.ipynb

4. To make use of the code a geoapify key is required.

## References

1. Skills Priority List - National Skills Commission - Australian Government - Skills Priority List 2022.xlsx - https://www.nationalskillscommission.gov.au/topics/skills-priority-list


2. Internet Vacancy Index - https://www.jobsandskills.gov.au/work/internet-vacancy-index - 
IVI_DATA Detailed Occupation - March 2006 onwards


3. 1220.0 - ANZSCO -- Australian and New Zealand Standard Classification of Occupations, 2013, Version 1.3  - https://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1220.02013,%20Version%201.3?OpenDocument
    Data cubes used - ANZSCO Version 1.3 - Structure, 12200 ANZSCO Version 1.3 Index of principal titles, alternative titles and specialisations 

4. Glassdoor Job Reviews - A large dataset of job reviews with textual features and numerical targets https://www.kaggle.com/datasets/davidgauthier/glassdoor-job-reviews (glassdoor_reviews.csv)

5. Salaries and Job Postings by Company in Australia - Uncovering Industry Trends and Analyzing Companies’ Salary Structures - https://www.kaggle.com/datasets/thedevastator/analyzing-the-salaries-and-job-postings-in-austr (seek_australia.csv)

6. Salaries taken from https://www.glassdoor.com.au/Salaries/

7. Industries and top companies: https://blog.iseekplant.com.au/blog/australias-top-100-construction-firms
    https://www.subsea.org/list-of-oil-and-gas-companies-in-australia/
    https://www.outlookindia.com/outlook-spotlight/top-software-development-companies-in-australia-2023-news-239010
    https://www.statista.com/statistics/1181152/australia-top-food-and-drink-businesses-by-revenue/
    https://clutch.co/au/it-services/cybersecurity
    https://blog.facilitybot.co/blog/top-security-companies-au/


