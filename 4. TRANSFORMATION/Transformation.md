# Transformation

### Steps invloved:
#### 1. Unzip:
Purpose: Unzipping the zipped folder and storing it in a different directory
Source: 
- Storage account : Azure Data Lake storage gen 2
- Type : Binary Zipped file

Sink: 
- Storage account : Azure Data Lake storage gen 2
- Type : Binary UnZipped file

#### 2. Backup Data:
Purpose: Create a backup folder for the unzipped data folder as the zipped folder will be deleted in the next steps.

Source: 
- Storage account : Azure Data Lake storage gen 2
- Type : Binary UnZipped file

Sink: 
- Storage account : Azure Data Lake storage gen 2
- Type : Binary UnZipped file

#### 3. Wait time:
Purpose: 

#### 4. Delete Zip:
Purpose: Deleting the zipped folder as we have created a event based trigger for the pipeline.

#### 5. Child Pipeline:
Purpose: Read the XML file and create SQL tables in the database. 

Source: 
- Storage account : Azure Data Lake storage gen 2
- Type : XML file

Sink: 
- SQL Database
- Type : Structured Data and stored as tables

![Child sink](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/4408d3e854ab65d998438357dc246da0a4e833aa/4.%20TRANSFORMATION/Child/Child_Sink.png)

#### 6. Data Flow:

Purpose: The data flow in Azure Data Factory extracts data from a SQL table, applies Conditional Split transformations, and saves the outputs as CSV files in designated Data Lake containers. New columns are derived from existing ones, and the enriched data is stored back in the SQL database for future use.

![Data_Flow](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/4408d3e854ab65d998438357dc246da0a4e833aa/4.%20TRANSFORMATION/Data_Flow.png)

#### 7. Send Email:

The workflow uses an HTTP trigger to receive requests and a "Outlook – Send Email" action to send dynamic emails with pipeline details like run ID, data factory name, and pipeline name. The JSON schema defines parameters for customizing the email content and recipient dynamically during execution.

![Send_Email](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/b298a62af2027e8b03fa5dca9b91626b107b1a2e/4.%20TRANSFORMATION/Send%20Email/Logic_app.png)

#### 8. Refresh PowerBI:
This workflow automates the manual refresh of a Power BI dataset. A trigger is used to initiate the process, followed by the "Refresh a dataset" action that updates the specified Power BI dataset dynamically. This ensures efficient and on-demand data updates for reporting purposes.

![Child Pipeline](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/e5376ceeae06dd03156c3e61f87d072b3fc3418a/4.%20TRANSFORMATION/Refresh_powerBi/Logic%20app.png)

#### Triggers:
Event based trigger has been created. whenever a .zip folder is created in the Azure Data Lake Storage Gen 2 the Master pipeline will be triggered to start.

![Master Pipeline](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/23875dbe36771838f385d2e6cbbf58c17dde0ded/4.%20TRANSFORMATION/Master_Pipeline.png)

![Child Pipeline](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/085d8e4fd8e20818c61527ec04623fb0e74d722d/4.%20TRANSFORMATION/Child_Pipeline.png)
