# NeXt Warning System (XWS)

## Vision

> We will deliver a world leading warning service that will save lives and protect livelihoods; by providing accurate and relevant information to users who need it, when they need it, in ways they want it – so they can take the right action.

## Delivery strategy

* XWS will be designed to be hazard agnositic
* XWS will be designed to be organisation agnositic
* XWS will be designed so that it can be deployed independantly by other parties
* XWS will be designed to allow for realtime deployment without downtime
* XWS will be designed to allow for configuration via a Admin UI for some key elements
* XWS will be designed to scale automatically to adapt to increased usage
* Any code created will be shared openly on GitHub
* Code will be documented to provide clear guidance on how to to use it

## Alpha development areas <a name="alpha"></a>

| Name            | Prototype             | Description  |
| -------------   | -------------         | ---          |
| [xws-contact-api](https://github.com/DigiworxLtd/XWS/tree/master/xws-contact-api) | Contact registration  | The API that is used in the xws-contact-web page. It allows Contact(s) to be linked with Location(s) an controls what optional messages are associated with each location |
| [xws-contact-web](https://github.com/DigiworxLtd/XWS/tree/master/xws-contact-web) | Contact registration  | This is the GDS style webpage used by Users to register, maintain and cancel their Contact from the service |
| [xws-message-web](https://github.com/DigiworxLtd/XWS/tree/master/xws-message-web) | Message sending       | The internal GDS style webpage interface for selecting the Message, TargetArea, InfoAdvice and InfoDetail |
| [xws-message-api](https://github.com/DigiworxLtd/XWS/tree/master/xws-message-api) | Message sending       | The API that triggers the sending of a message. This can include information collated during the xws-message-web input |
| [xws-core-engine](https://github.com/DigiworxLtd/XWS/tree/master/xws-core-engine) | Core engine           | This is the code that links the Message to the TargetArea(s) to the Location to the Contact to calculate who should receive the message |


### Contact

For more information contact the team via [floodwarningservices@environment-agency.gov.uk](mailto:floodwarningservices@environment-agency.gov.uk)