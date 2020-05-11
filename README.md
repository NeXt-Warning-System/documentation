# NeXt Warning System (XWS)

## Vision

> We will deliver a world leading warning service that will save lives and protect livelihoods; by providing accurate and relevant information to users who need it, when they need it, in ways they want it – so they can take the right action.

## Delivery strategy

* XWS will be designed to be hazard agnostic
* XWS will be designed to be organisation agnostic
* XWS will be designed so that it can be deployed independently by other parties
* XWS will be designed to allow for realtime deployment without downtime
* XWS will be designed to allow for configuration via a Admin UI for some key elements
* XWS will be designed to scale automatically to adapt to increased usage
* Any code created will be shared openly on GitHub
* Code will be documented to provide clear guidance on how to to use it

## Alpha development areas <a name="alpha"></a>

| Name            | Prototype             | Status  |   Description  |
| -------------   | -------------         | ---     | ---            |
| [xws-contact-api](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-contact-api) | Contact registration  | Planning    | The API that is used in the xws-contact-web page. It allows Contact(s) to be linked with Location(s) an controls what optional messages are associated with each location |
| [xws-contact-web](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-contact-web) | Contact registration  | In dev      | This is the GDS style webpage used by Users to register, maintain and cancel their Contact from the service |
| [xws-message-web](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-web) | Message sending       | Planning    | The internal GDS style webpage interface for selecting the Message, TargetArea, InfoAdvice and InfoDetail |
| [xws-message-api](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-message-api) | Message sending       | Not started | The API that triggers the sending of a message. This can include information collated during the xws-message-web input |
| [xws-core-engine](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-core-engine) | Core engine           | Not started | This is the code that links the Message to the TargetArea(s) to the Location to the Contact to calculate who should receive the message |
| [xws-edw-api](https://github.com/NeXt-Warning-System/documentation/tree/master/xws-edw-api)         | TBC                   | TBC         | Providing a link between the core XWS application and the contacts provided by the telephony providers under our opt-in warning service Extended Direct Warnings (EDW) | 

### Contact

For more information contact the team via [floodwarningservices@environment-agency.gov.uk](mailto:floodwarningservices@environment-agency.gov.uk)
