# xws-contact-api

## Objective
* Create a simple API interface that can be used to access, register, update and remove contacts from XWS
* Allow for contact registration from multiple sources i.e. multiple online registration sites

## Description of work

TBC

## MVP

* Must be hazard agnostic
* Use the minimum required data to provide a warning service to our users
* Must comply with the [GDS API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)
* Must be JSON
* Only one language supported for each contact
* Active contacts can only be in the system once
  * If a contact is  removed and then re-added, new contactid generated. This is preserve the history of the previous contact
