# xws-contact-web: registering for warnings using locations

## Hypothesis

By allowing users to sign up to wider (known) geographical locations, they are enable to better understand the live flood impact in an area they are interested in.

## Method

Locations are defined by "bounding boxes" around known populated places in England. These are sourced from the OS Open Names data provided by the Ordnance Survey. Using this data ensures consistency with the property data set (AddressBase Premium) also provided by the OS. We have applied the following filters to the Open Names data; country = England, Type = populatedPlace

Bounding boxes are creates using the MBR_XMIN, MBR_YMIN, MBR_XMAX and MBR_YMAX co-ordinates. Resultant bounding boxes have been spatially joined to national Flood Warning and Flood Alert shapefiles for England. 

Historic flood warning messages have been used to ascertain the number of messages a user would be likely be sent in a given year for each bounding box. We have applied the following filters to the historic flood warning messages; Messagetype matches Flood Alert or Update Flood Alert, Flood Warning or Update Flood Warning, Severe Flood Warning or Update Severe Flood Warning, Remove X

### Known limitations

Any Target Areas that have been deactivate will not be matched to overlapping bounding boxes and therefore not appear in the results - this is due to the fact that it would be too laborious to accurately recreate this data. This method is designed to give a rough approximation of the number of messages a user may get if signing up to a location for flood warnings.

Any Target Areas issued by NRW that overlap with bounding boxes in England have not been included. This will mean the numbers will be (slightly) lower than reality for bounding boxes on the border.

## Results

Data for the years 2017, 2018, 2019 and 2020 (to 20th April) were analysed (Update messages were introduced in 2017). The headline findings were:

* London was the most frequently issued to location each year - this is the largest bounding box in the country In 2019 London messages issued were:
  * 208 Flood Alerts
  * 19 Update Flood Alerts
  * 179 Remove Flood Alerts
  * 14 Flood Warnings
  * 14 Remove Flood Warnings
* In some years, even small locations (with small bounding boxes) receive many messages - for example, Flamborough Village (YO15) in 2017 and 2018
* Flood Alert and Update Flood Alert make up around 42% of all the messages issued between 2017-04/2020 inclusive
* Remove messages make up around 44% of messages issued between 2017-04/2020 inclusive
* If a user had only registered to receive Flood Warning and Severe Flood Warning messages (the default setting) between 2017 and 2020 for a single area, then the most amount of messages a user would have received in the period would have been for Todmorden Town, where we issued:
  * 62 Flood Warnings
  * 3 Update Flood Warnings

## Benefits

* This approach is simple for the user – most users are likely to know the area they want to know about. During contact first user testing, a majority of users selected a location over a specific property
* This approach is futureproof – underlying changes to any TAs are automatically picked up. If we add a new TA, they automatically receive any flood warnings sent to it. If we remove a TA, they no longer receive that message. There is no maintenance for the user or for Organisation.
* This approach is  quick for the user - they can sign up for one location and that’s it. They can of course sign up for multiple locations if they wish
* If a user choses to register a property that cannot currently receive a flood warning service, we can match the address to available wider locations and suggest they sign up for one those areas instead

## Issues

* Moving to smaller flood warning areas in the future may increase the number of messages being sent to users registered to large geographical locations
* Some locations are not offered a flood warning service so we need to ensure that information is clearly presented to a user when they register
* We have no control over the size of the bounding boxes - these are provided using OS data. If there is an error in the OS data this could propagate through our registration process
* We would need to monitor if there are changes to the bounding box data provided by the OS. If they change the data and we choose to update our data in the system, we need to understand the impacts that the change of bounding box size would have on user registered to those areas
* We need to understand the impact of users registering to bourdning boxes on the England/Wales border, especially if NRW choose not to use XWS in the future. There is a risk that a user signing up to a border location may not receive the full picture if NRW and EA use seperate systems

## Recommendations

Using this data in the registration process would give the user an accurate number of messages they could potentially receive by signing up to a wider location. This is particular useful for areas where Flood Alerts are heavily issued. Providing this data would give users more visibility of the impacts of signing up for a wider location and the impact of opt-ing into optional messages.

We need to ensure that we monitor changes to the underlying OS Names bounding box data.

## Supporting data

* [Results of data analysis (Excel)](https://github.com/NeXt-Warning-System/documentation/blob/master/xws-contact-web/evidence/data/BB%20to%20TA%20Union%20remove.xlsx?raw=true)

### Data sources

* [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)
* [Flood Warning areas in England](https://data.gov.uk/dataset/0d901c4a-6e1a-4f9a-9408-73e0c1f49dd3/flood-warning-areas)
* [Flood alert areas in England](https://data.gov.uk/dataset/7749e0a6-08fb-4ad8-8232-4e41da74a248/flood-alert-areas)
* [Historic flood warnings in England](https://data.gov.uk/dataset/d4fb2591-f4dd-4e7f-9aaf-49af94437b36/historic-flood-warnings) - this data does not contain Remove messages. These have been added to perform the above analysis.
