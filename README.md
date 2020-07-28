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
| [xws-data-flows](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-data-flows)               | TBC      | In progress | Designing the necessary data flows and data sources between XWS and the various other systems |
| [xws-data-sources](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-data-sources)           | TBC      | In progress | The data sources that we will use in XWS |
| [xws-data-standards](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-data-standards)       | TBC      | In progress | The data standards that we will use in XWS |
| [xws-message-ivr](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-ivr)             | TBC      | Not started | Designing the Interactive Voice Response (IVR) system required for XWS |
