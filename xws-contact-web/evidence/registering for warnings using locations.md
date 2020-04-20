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

London


## Suggestion



* It’s simple – most people are likely to know the area they want to know about. During contact first user testing, almost all users selected a location over a specific property
* It's future proof – underlying changes to any TAs are automatically picked up. If we add a new TA, they get it, if we remove one it disappears. No maintenance for the user or for us.
* It's quick – they sign up for one location and that’s it. No more adding TAs one by one as Area of Interests (AOIs). They can of course sign up for multiple locations if they wish


## Supporting data
* TBC
* 

### Data sources

* [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)
* [Flood Warning areas in England](https://data.gov.uk/dataset/0d901c4a-6e1a-4f9a-9408-73e0c1f49dd3/flood-warning-areas)
* [Flood alert areas in England](https://data.gov.uk/dataset/7749e0a6-08fb-4ad8-8232-4e41da74a248/flood-alert-areas)
* [Historic flood warnings in England](https://data.gov.uk/dataset/d4fb2591-f4dd-4e7f-9aaf-49af94437b36/historic-flood-warnings)
