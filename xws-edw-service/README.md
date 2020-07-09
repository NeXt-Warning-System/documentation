# xws-edw-service

The idea is that data is provided to the EDW service to process before going to providers. Data gets processed, sent to providers and comes back to the EDW service for post processing. XWS/FWS would need to provide a few data sets to allow this to happen. 

We have an opportunity to also use the EDW process to calculate key data sets for the flood service, without having to have large datasets within the system itself. 

## Objective

* Providing a link between the core XWS application and the contacts provided by the telephony providers under our opt-in warning service, Extended Direct Warnings (EDW)

## Description of work

![xws-edw-services steps](https://github.com/NeXt-Warning-System/documentation/blob/master/xws-edw-service/design/EDWprocess.png)

## MVP

* Use the minimum required data to provide a warning service to our users
* Must comply with the [GDS API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)
* Contacts can only be in the system once

## Policy implications

* TBC