# xws-contact-web: registering for warnings using locations

## Use case hypothesis

By allowing users the ability to sign up to wider (known) geographical areas, they are enable to better undesrtand the live flood impact in an area they are interested in.

## Approach

Locations are defined by "bounding boxes" around known populated places in England. These are sourced from the OS Open Names data prvided by the Ordnance Survey. Using this data ensures consistancy with the property data set (AddressBase Premium) also provided by the OS. We have applied the following filters to the Open Names data; country = England, Type = populatedPlace

Bounding boxes are creates using the MBR_XMIN, MBR_YMIN, MBR_XMAX and MBR_YMAX co-ordindates. Resultant bounding boxes have been spaitally joined to national Flood Warning and Flood Alert shapefiles for England. The number of active Target Areas that overlap each bounding box have been calculated. Histroic flood warning system from FWS has been used to ascertain the number of messages a usr would be likely to get in a given year for each bounding box.

## Results




### Data sources

* [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)

## Suggestion



