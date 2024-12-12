# AppleHealth_Azure_End_to_End_project

# Overview

This demonstrates the use of Azure Data Factory (ADF) for developing an ETL pipeline to process health data extracted from the iPhone Health app. The pipeline handles the extraction, transformation, and loading of raw XML data into a structured format for analytics and reporting purposes.

# Project Objectives

To explore the complexities of XML data integration using Azure Data Factory, focusing on extracting and transforming hierarchical data structures.

To build a scalable and automated data pipeline capable of handling large datasets efficiently.

To ensure effective transformation and secure storage of health data for analysis and future projects.

To manage and process health data in compliance with data privacy and security standards.

To develop comprehensive reporting solutions for insights and decision-making using processed health data.

# Key Features
### Data Source

Exported raw health data from the iPhone Health app, comprising:
- XML files (main data source)
- GPX files (route data)
- CSV files (ECG readings)

### Azure Resources Utilized

Data Lake Storage Gen2: For storing raw and processed data.

Azure SQL Database:     For structured data storage.

Logic Apps:  
- For email notifications via the Gmail API.
- For Power BI dataset refresh automation.

Log Analytics Workspace: For monitoring pipeline performance.

Metric Alerts & Action Groups: For real-time alerts and notifications.

Power BI: For dynamic visualization and reporting. 

### Pipeline Architecture

#### Master Pipeline:
Storage Event Trigger: Detects new uploads and triggers the pipeline using event triggers.
Copy Data Activities: For data extraction, unzipping, and backup.

#### Child Pipeline: 
Handles XML data parsing and mapping.

#### Data Transformation:
Mapped XML arrays to SQL tables. Excluded unnecessary metadata for efficient storage.

#### Data Flow:
Transformed SQL data into categorized and stored as CSV files and SQL tables for further use.

#### Alert Mail:
Configured automated alert emails using Azure Logic Apps to notify stakeholders of pipeline status, including successful completions and error occurrences, ensuring timely monitoring and resolution.

#### PowerBI Data Refresh:
Leveraged Azure Logic Apps to trigger Power BI refresh upon successful completion of the data pipeline.


