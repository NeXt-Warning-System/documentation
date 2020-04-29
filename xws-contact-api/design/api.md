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
-> RegisteredDate - denotes time and date contact was added to the system. SHould be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard)
-> RegisteredMethod - denotes methodof contact registration
-> UpdateDate - denotes time and date contact was last updated in the system. SHould be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard)
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
-> 2017-08-09T13:58:07Z
-> Online
-> 2019-10-09T20:58:07Z
~~~~

Example for EDW

~~~~
-> 8N6EJEBF213123
-> 07123456789
-> ContactChannel
  -> telephone 
-> OptionalMessages
-> en-GB
-> active
-> Opt-out
-> 2017-08-09T13:58:07Z
-> Auto-enrolled
-> 2019-10-09T20:58:07Z
~~~~
