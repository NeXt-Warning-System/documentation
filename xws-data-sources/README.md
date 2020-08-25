# xws-data-sources

## Objectives

* Agree the data sources for use in the system
* Agree flood specific data sources

## Description of work

### Design

| Name                          | Source                                                                                                      | Notes    |
| -------------                 | ------------                                                                                                | ------   |
| Location                      | [OS Open Names](https://www.ordnancesurvey.co.uk/business-government/products/open-map-names)               | Remove Scotland and Wales, filter to populatedPlace |
| Addresses                     | [OS AddressBase Premium](https://www.ordnancesurvey.co.uk/business-government/products/addressbase-premium) | Remove Scotland and Wales |
| Local Custodian Codes         | [OS AddressBase](http://www.ordnancesurvey.co.uk/docs/product-schemas/addressbase-products-local-custodian-codes.zip) | Used to assess which properties are in Scotland and Wales |
| Country codes                 | [GDS](https://www.gov.uk/government/publications/open-standards-for-government/country-codes)               |           |  
| Local authorities in England  | [GDS](https://www.registers.service.gov.uk/registers/local-authority-eng)                                   |           |
| Local authorities in Scotland | [GDS](https://www.registers.service.gov.uk/registers/local-authority-sct)                                   |           |
| Local authority type          | [GDS](https://www.registers.service.gov.uk/registers/local-authority-type)                                  |           |
| Government org names          | [GDS](https://www.registers.service.gov.uk/registers/government-organisation)                               |           |


### Flood specific

| Name                        | Source        | Notes    |
| -------------               | ------------  | ------   |
| Public Facing Area Names    | EA            | Taken from data standards list |
| Flood Cause                 | EA            | Taken from data standards list |
| Flood Source                | EA            | Taken from data standards list |


## MVP

* TBC

## Policy implications

* TBC