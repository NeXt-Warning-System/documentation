# NeXt Warning System

## Vision

> We will deliver a warning service that will save lives and protect livelihoods; by providing accurate and relevant information to users who need it, when they need it, in ways they want it – so they can take the right action.

## Delivery strategy

* XWS will be designed to be hazard agnostic
* XWS will be designed to be organisation agnostic
* XWS will be designed so that it can be deployed independently by other parties
* XWS will be designed to allow for real-time deployment without downtime
* XWS will be designed to allow for configuration via a Admin UI for some key elements
* XWS will be designed to scale automatically to adapt to increased usage
* Any code created will be shared openly on GitHub
* XWS will use and contribute to open standards, common components and patterns
* Code will be documented to provide clear guidance on how to use it

## Alpha development areas

| Name            | Priority              | Status  |   Description  |
| -------------   | -------------         | ---     | ---            |
| [xws-core-engine](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-core-engine) | 1        | Planning    | Creating the link between the Message to the TargetArea(s) to the Location to the Contact to calculate who should receive the message |
| [xws-contact-web](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-contact-web) | 2        | In dev      | The webpage used by Users to register, maintain and cancel their Contact from the service |
| [xws-message-web](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-web) | 3        | In dev      | The internal interface for selecting the Message, TargetArea, InfoAdvice and InfoDetail |
| [xws-edw-service](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-edw-service) | TBC      | Planning    | Providing a link between the core XWS application and the contacts provided by the telephony providers under our opt-in warning service Extended Direct Warnings (EDW) | 


### Other development areas

There are also other development areas that need to be explored in Alpha. These additional areas will be vital for moving to Beta effectively. These development areas could be completed by contractors or by External Digital Services.

| Name            | Priority              | Status  |   Description  |
| -------------   | -------------         | ---     | ---            |
| [xws-contact-api](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-contact-api)             | TBC      | Not started | The API that is used in the xws-contact-web page. It allows Contact(s) to be linked with Location(s) and controls what optional messages are associated with each location |
| [xws-message-api](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-api)             | TBC      | Not started | The API that triggers the sending of a message. This can include information collated during the xws-message-web input |
| [xws-message-languages](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-languages) | TBC      | Not started | How we support multiple languages in the message content |
| [xws-data-flows](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-data-flows)               | TBC      | Not started | Designing the necessary data flows and data sources between XWS and the various other systems |
| [xws-message-ivr](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-ivr)             | TBC      | Not started | Designing the Interactive Voice Response (IVR) system required for XWS |


## Data

There are certain data standards and sources that we should be using in XWS. These are listed below.

### Standards

| Name                                                                                                                                       | Source          | Notes  | 
| -------------                                                                                                                              |------------     |------- |
| [Language tags](https://www.gov.uk/government/publications/open-standards-for-government/language-tags)                                    | GDS             |        |
| [Date-times and time-stamps](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard) | GDS             |        |
| [Exchange of location point](https://www.gov.uk/government/publications/open-standards-for-government/exchange-of-location-point)          | GDS             |        |
| [Encoding characters](https://www.gov.uk/government/publications/open-standards-for-government/cross-platform-character-encoding-profile)  | GDS             |        |
| [Country codes](https://www.gov.uk/government/publications/open-standards-for-government/country-codes)                                    | GDS             |        |
| [Local authorities in England](https://www.registers.service.gov.uk/registers/local-authority-eng)                                         | GDS             |        |
| [Local authorities in Scotland](https://www.registers.service.gov.uk/registers/local-authority-sct)                                        | GDS             |        |
| [Principal local authorities in Wales](https://www.registers.service.gov.uk/registers/principal-local-authority)                           | GDS             |        |
| [Local authority type](https://www.registers.service.gov.uk/registers/local-authority-type)                                                | GDS             |        |
| [Government org names](https://www.registers.service.gov.uk/registers/government-organisation)                                             | GDS             |        |
| [Environment Agency Addressing Standard](https://defra.sharepoint.com/:w:/r/sites/def-contentcloud/_layouts/15/Doc.aspx?sourcedoc=%7B6b2271a5-3f33-47ed-990f-b8df6578d7ab%7D&action=default&mobileredirect=true)      | EA              |  |
| [Environment Agency Public Facing Area Names](https://defra.sharepoint.com/:w:/r/sites/def-contentcloud/_layouts/15/Doc.aspx?sourcedoc=%7B46cbfc31-652b-49af-ae9a-c6deb4bb1cf9%7D&action=default&mobileredirect=true) | EA              |  |
| [Environment Agency Flood Cause](https://defra.sharepoint.com/:w:/r/sites/def-contentcloud/_layouts/15/Doc.aspx?sourcedoc=%7Bd00699b9-d12d-4387-8779-5dd031411a95%7D&action=default&mobileredirect=true)              | EA              |  |
| [Environment Agency Flood Source](https://defra.sharepoint.com/:w:/r/sites/def-contentcloud/_layouts/15/Doc.aspx?sourcedoc=%7B50b33a45-5dcd-49b4-96ae-f5973c6f6e8d%7D&action=default&mobileredirect=true)             | EA              |  |


### Sources

| Name           | Source                                                                                                      | Notes    |
| -------------  | ------------                                                                                                | ------   |
| Location       | [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)               | Remove Scotland and Wales, filter to populatedPlace |
| Addresses      | [OS AddressBase Premium](https://www.ordnancesurvey.co.uk/business-government/products/addressbase-premium) | Remove Scotland and Wales |
