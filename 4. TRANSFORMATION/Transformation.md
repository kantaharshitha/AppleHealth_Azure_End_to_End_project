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

![Data_Flow](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/4408d3e854ab65d998438357dc246da0a4e833aa/4.%20TRANSFORMATION/Data_Flow.png)

#### 7. Send Email:


#### 8. Refresh PowerBI:


#### Triggers:
Event based trigger has been created. whenever a .zip folder is created in the Azure Data Lake Storage Gen 2 the Master pipeline will be triggered to start.

![Master Pipeline](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/23875dbe36771838f385d2e6cbbf58c17dde0ded/4.%20TRANSFORMATION/Master_Pipeline.png)

![Child Pipeline](https://github.com/kantaharshitha/AppleHealth_Azure_End_to_End_project/blob/085d8e4fd8e20818c61527ec04623fb0e74d722d/4.%20TRANSFORMATION/Child_Pipeline.png)
