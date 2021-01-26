<h1 align='center'>Amazon E-Commerce Database Creation</h1>

<p align="center">
  <img src="Images\amzn.png" width=120> </p>

> ## Overview
---
Web-based shopping preference has created a huge demand for E-commerce websites nowadays. In this project we have focussed to create a database which can help **e-commerce optimization** to a great deal. The design of the database focuses on enabling such **big queries** which can contribute to key business aspects of conversion-rate and revenue growth. The data has been structured in scuh a way that optimization startegies such as how to enhance average order values, what bundle of products go well together for sale etc can be easily queried from the database. These factors specially in regard of German e-commerce market is important.The average order value (AOV) for Germany is **138 euros** per order online which is higher than the global average but at the same time the average conversion rate in Germany is just **2.22%**. E-commerce market is showing robust growth trends in coming years, so it may be possible to look for more oppurtunities to optimize e-commerce in Germany. I hope this project may help in this.

<p align="center">
  <img src="Images\03 • 220.png" width=800> </p>


>## Table of Contents:
<details open>
<summary>Show/Hide</summary>
<br>

 1. [Data](#Data)
 1. [ Tools ](#Tools)
 2. [ Scrape ](#Scrape)
 3. [ Data-process ](#Data-Process)    
 4. [ SQL ](#SQL)
 5. [ Summary Detail ](#Summary_Detail)
</details>



## Data:
<details>
<a name="Data"></a>
<summary>Show/Hide</summary>
<br>
 
 * dslr.csv
 * headphones.csv
 * keyboard.csv
 * monitor.csv
 * mouse.csv
 * product_output.jsonl
 * product_summary.csv
 * search_output.jsonl
</details>


## Tools:
<details>
<a name="Tools"></a>
<summary>Show/Hide</summary>
<br>
    
* <strong>Python</strong>
* <strong>Pandas</strong>
* <strong>Numpy</strong>
* <strong>Matplotlib</strong>
* <strong>Seaborn</strong>
* <strong>Requests</strong>
* <strong>Selectorlib</strong>
* <strong>Fake_useragent</strong>
* <strong>Time</strong>
* <strong>Plotly</strong>
</details>

## Scrape
<details>
<a name="Scrape"></a>
<summary>Show/Hide</summary>
<br>

<!--  OL -->
1. Scraping the data
    * Imports
    * Urls are scraped using create_search_url.py
    * Yaml file created through CSS elements
    * Search. py deployed to fetch Product summary
    * Json file dumped to form search_output.json
    * Product urls extracted using urlib
    * Product. py deployed to fetch product details
    * Json file dumped to form product_output.json
</details>

## Data-process
<details>
<a name="Data-process"></a>
<summary>Show/Hide</summary>
<br>
 
 1. Search_output.json validated
 1. Imports
 1. Duplicates removed
 1. Nulls checked
 1. Feature extraction done
 1. Data saved as csv for upload
 </details>

## SQL
<details>
<a name="SQL"></a>
<summary>Show/Hide</summary>
<br>
 
 ## ETL Process

<p align="center">
  <img src="Images\etl.jpg" width=500> </p>

1. Extraction: Csv file fetched in VScode(editor)
1. Transformation: Following specified
    * Field Terminator  
    * Line Termination
    * Field Demilitation
    * Encloser and Ignore  
1. Loading :
    * transformed [Sql-upload.txt](#Data/Sql-upload.txt) is placed in enviornment variable defined path 
    * my.ini file can also be changed to put desired path
    * Data Warehouse tables are designed in a **de-normalized** structure.
    (In **normalization database** the same column data cannot be repeated or in simple words there will not be any redundant data.)
    * Load Infile Sql command done to upload data.
</details>

## Summary Detail
<details>
<a name="Summary Detail"></a>
<summary>Show/Hide</summary>
