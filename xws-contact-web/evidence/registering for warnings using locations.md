# xws-contact-web: registering for warnings using locations

## Use case hypothesis

By allowing users the ability to sign up to wider (known) geographical areas, they are enable to better understand the live flood impact in an area they are interested in.

## Method

Locations are defined by "bounding boxes" around known populated places in England. These are sourced from the OS Open Names data provided by the Ordnance Survey. Using this data ensures consistency with the property data set (AddressBase Premium) also provided by the OS. We have applied the following filters to the Open Names data; country = England, Type = populatedPlace

Bounding boxes are creates using the MBR_XMIN, MBR_YMIN, MBR_XMAX and MBR_YMAX co-ordinates. Resultant bounding boxes have been spatially joined to national Flood Warning and Flood Alert shapefiles for England. 

Historic flood warning messages have been used to ascertain the number of messages a user would be likely be sent in a given year for each bounding box. We have applied the following filters to the historic flood warning messages; Messagetype matches Flood Alert or Update Flood Alert, Flood Warning or Update Flood Warning, Severe Flood Warning or Update Severe Flood Warning

### Known limitations

Any Target Areas that have been deactivate will not be matched to overlapping bounding boxes and therefore not appear in the results - this is due to the fact that it would be too laborious to accurately recreate this data. This method is designed to give a rough approximation of the number of messages a user may get if signing up to a location for flood warnings.

## Results

Data for the years 2017, 2018 and 2019 were analysed (Updat emessages were inttroduced in 2017). The headline findings were:

* London was the most frequently issued to location each year (peaking at 241 total messages in 2016 where 208 Flood Alerts, 19 Update Flood Alerts and 14 Flood Warnings were issued) - this is the largest bounding box in the country
* In some years, even small locations (with small bounding boxes) receive many messags - for example, Flamborough Village (YO15) which is freqnely in the top 5 most issued areas
* Flood Alert and Update Flood Alert make up aarond 70% of all the messages issued between 


## Benefits

* It’s simple – most users are likely to know the area they want to know about. During contact first user testing, a majority of users selected a location over a specific property
* It's futureproof – underlying changes to any TAs are automatically picked up. If we add a new TA, they automatically recieve any flood warnings sent to it. If we remove a TA, they no longer recieve that message. There is no maintenance for the user or for Organisation.
* It's quick – users can sign up for one location and that’s it. They can of course sign up for multiple locations if they wish

## Reommendation

Using tihs data in the registarion porcess would give an idea to the user on the number of messages they could potentially receive. This is partiocualr useful for areas where Flood Alerts are heavily issued. Providing this data would give users more visibility of the impacts of signing up for a wider location and the impact of opt-ing into optional messages.

## Supporting data

* [Results of data analysis (Excel)](https://github.com/NeXt-Warning-System/documentation/blob/master/xws-contact-web/evidence/BB%20to%20TA%20Union.xlsx?raw=true) 

### Data sources

* [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)
* [Flood Warning areas in England](https://data.gov.uk/dataset/0d901c4a-6e1a-4f9a-9408-73e0c1f49dd3/flood-warning-areas)
* [Flood alert areas in England](https://data.gov.uk/dataset/7749e0a6-08fb-4ad8-8232-4e41da74a248/flood-alert-areas)
* [Historic flood warnings in England](https://data.gov.uk/dataset/d4fb2591-f4dd-4e7f-9aaf-49af94437b36/historic-flood-warnings)
