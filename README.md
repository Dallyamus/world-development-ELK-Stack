# ELK Stack - World Development, Economy and Population

The aim of this project is to analyze selected data using the ELK (Elasticsearch, Kibana, Logstash) Stack.

### Data
- 1. `Demographics`
  - Files:
    - `1.1 Population by Country, Age, and Sex`
      - This dataset presents **population of each country** for each year from 2001 to 2024. <br>
        The populations are also divided by **Age**, **Sex**, **Country**, and **year of data collection**.
    - `1.2 Migration data between regions.`
      - This dataset shows **the net migration for each country for each year from 2001 to 2024**. <br>
        Net migration is the net total of migrants during the period, that is, the number of immigrants minus the number of emigrants, including both citizens and noncitizens.
<br>

- 2. `Economic Data`
  - Files:
    - 2.1 `Employment statistics`
      - This dataset presents **the number of employed people** in each country for each year from 2001 to 2016. <br>
    - 2.2 `GDP`
      - This dataset contains information about **GDP** value of each country for each year from 2001 to 2023. <br>
<br>

- 3. `Access to Goods`
  - Files:
    - 3.1 `Internet Access`
      - This dataset presents **percentage of a countries population** that has an access to Internet for each year from 2001 to 2023. <br>
    - 3.2 `Electricity Access`
      - This dataset presents **percentage of a countries population** that has an access to Electricity for each year from 2001 to 2022.
<br>

So each of my datasets has a common attribute: **Country Name, Country Code and Year**

### Data sources

[World Bank Open Data](https://data.worldbank.org)

### Files description

Understanding of the individual datasets, for example **what data format each column is, what is the content of each column, and describe any integrity constraints on the columns**.

- 1. `Population by Country, Age, and Sex`
      - Format: "Country Name, Country Code, Year, Population, Sex, Age"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2024(**int** > 2000)
      * Sex - Male of Female
      * Age - groups of "0-14" y.o., "15-64" y.o. and "65+" y.o.
      * Population - number of people of given characteristics(**int** > 0)

- 2. `Migration data between regions.`
      - Format: "Country Name, Country Code, Year, Net Migration"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2024(**int** > 2000)
      * Net migration - the net total of migrants during the period, that is, the number of immigrants minus the number of emigrants, including both citizens and noncitizens.(**int**)

- 3. `Employment statistics`
      - Format: "Country Name, Country Code, Year, Employment"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2016(**int** > 2000)
      * Employment - number of employed people.(**int**)

- 4. `GDP`
      - Format: "Country Name, Country Code, Year, GDP"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2023(**int** > 2000)
      * GDP - the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products. It is calculated without making deductions for depreciation of fabricated assets or for depletion and degradation of natural resources. Data are in current U.S. dollars.(**int**)

- 5. `Internet Access`
      - Format: "Country Name, Country Code, Year, Internet Access"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2023(**int** > 2000)
      * Internet Access - Percentage of a people that has an access to internet.(0 < **int** < 100)

- 6. `Electricity Access`
      - Format: "Country Name, Country Code, Year, Electricity Access"
      * Country Name - Name of the country.
      * Country Code - ISO 3166-1 alpha-3 three-letter country codes
      * Year - Year from 2001 to 2023(**int** > 2000)
      * Internet Access - Percentage of a people that has an access to electricity.(0 < **int** < 100)

### Preprocessing

I needed to melt downloaded files. I've successfully done it using Python PL and it's library Pandas with such exact method as "melt"

### Configuration
##### /elk 
- /elasticsearch/config/elasticsearch.yml - elasticsearch configuration file. Default configuration is used.
- /kibana/config/kibana.yml - kibana configuration file. Default configuration is used.
- /logstash/config/logstash.yml - logstash configuration file. Default logstash configuration is used.
- /logstash/config/pipelines.yml - logstash configuration file, which stores information about folder that contains pipelines configuration files.
- /data - stores data files.
- /pipeline/*.conf - configurations files for pipelines.
- /template/*.json - templates, that are used by elastic for creating index mappings.

##### docker-compose.yml
elasticsearch - core instance. Stores, seaches and analyses data. <br>
logstash - data processing pipeline. <br>
kibana - visualization dashboard. <br>
cerebro - tool for monitoring status of database. <br>

### Queries
See results/queries.txt

### Vizualization

See results/README.md and results/HOWTO.md

## Conclusion

I have succesfully created project that uses ELK (Elasticsearch, Kibana, Logstash) stack for researching World Life Indicators. <br>
This project can be developed further.

## Sources
* https://www.elastic.co/
* https://discuss.elastic.co/
* https://chatgpt.com