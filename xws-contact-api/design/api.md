# xws-contact-api

## Design

The below is an first draft of the API attributes for the XWS Contact API.

~~~~
-> ContactID - a randomly assigned unique id. If contact removed and then readded, new contactid generated
-> Contact - the email address, telephone number or http endpoint used to receive a Message
-> ContactChannel - the channel types for the Contact. Contact can have multiple contactChannels such as text and telephone. Contact cannot have null
  -> email
  -> text
  -> telephone
  -> XML
-> OptionalMessages - Contact can have non or multiple optionalMessages
  -> remove
  -> minor
-> ContactLanguage - Contact can only have one language
-> ContactStatus - denotes if contact is active or removed
-> ContactUser - denotes user category of contact i.e. Public, Partner, Opt-out, Staff, System. Cannot by null and only one entry
~~~~

Possible additions
~~~~
-> hazard - denotes the hazards Contact is interested in and therefore available messages
~~~~

Example

~~~~
-> 8N6EJEBF
-> 07123456789
-> ContactChannel
  -> text
  -> telephone 
-> OptionalMessages
  -> remove
-> en-GB
-> active
-> Public
~~~~
