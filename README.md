# ETL_Project

**Group members: Anna Sours, Anna Kantor, Andre Shearer, Lisa Caruana**

## Examination of International trends in coal electricity production, air pollution levels and health impacts by country (2000 - 2017)


**Goal:** Create a database that will allow users to examine connections between the number of coal power plants in a country (by megawatt hour), air pollution levels and recorded deaths from air pollution per 100,000 people between 2000 - 2017.

Our group identified this as a gap in available databases. While there is an abundance of data available on each individual component, there is a lack of databases that combine data on electricity generated by coal power plants, air pollution levels and mortality rates from air pollution.


### Project Proposal:
Questions we were trying to answer include:
1.	Is there a measurable change in health effects as regions move from coal to renewables? 
2.	What countries are increasing electricity generation by coal fired power plants, decreasing their use and/or staying constant?
3.	Are there any noticeable impacts on air pollution levels with changes in electricity generation by coal fired power plants?
4.	Are there any noticeable changes in mortality rates from air pollution with changes in coal fired electricity production?


### Extract:
We collected the data from the following websites:
* Coal Power Generation 
 1.	New coal plants by country (Source: Global Energy Monitor) (https://docs.google.com/spreadsheets/d/1W3pt5FhqitHwbVWvvgfRr0S6QfqfOuea9pt3-Mlxp5M/edit#gid=1682876416)   
 2.	Retired coal plants by country (Source: Global Energy Monitor) (https://docs.google.com/spreadsheets/d/1W3pt5FhqitHwbVWvvgfRr0S6QfqfOuea9pt3-Mlxp5M/edit#gid=1682876416)

* Air Pollution Levels
 Source: OECD Air Pollution Exposure databank (https://data.oecd.org/air/air-pollution-exposure.htm#indicator-chart)
 1.	OECD (2021), Air pollution exposure (indicator). doi: 10.1787/8d9dcc33-en (Accessed on 10 March 2021)
 2.	OECD (2021), Air pollution effects (indicator). doi: 10.1787/573e3faf-en (Accessed on 10 March 2021)
 3.	OECD (2021), Air and GHG emissions (indicator). doi: 10.1787/93d10cf7-en (Accessed on 10 March 2021) 
* Mortality Rates from Air Pollution 
 1.	Air Pollution Exposure and Effects (Source: Kaggle) (https://data.oecd.org/air/air-pollution-exposure.htm#indicator-chart)


### Transform:
The data cleaning and shaping were performed in Jupyter Notebook by using Pandas. The main part of cleaning and transformation included dropping unnessesary columns, renaming columns, creating and merging dataframes. All datasets were checked for duplicates and null values. However, we decided not to exclude null values from the resultset as it would be valuable data for future analysis.


### Load:
The final data was loaded into PostgreSQL database by using SQLAlchemy. We decided to use a relational database to maintain data integrity, optimize data storage by normalizing the data to related tables for futere flexibility and comparisons between the data.

