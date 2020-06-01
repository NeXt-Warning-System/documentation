# xws-contact-api

## Design

The below is the second draft of the API attributes for the XWS Contact API.

~~~~
-> contactid - a randomly assigned unique id. If contact removed and then re-added, new contactid generated
-> contact - the email address, telephone number or http endpoint used to receive a Message
-> contactchannel - the channel types for the Contact. Contact can have multiple contactChannels such as text and telephone. Contact cannot have null
  -> email
  -> text
  -> telephone
  -> XML
-> contactlanguage - Contact can only have one language
-> contactstatus - denotes if contact is active or removed
-> contactyype - denotes user category of contact i.e. Public, Partner, Opt-out, Staff, System. Cannot by null and only one entry
-> registerdate - denotes time and date contact was added to the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard)
-> registermethod - denotes method of contact registration
-> locations - list of locations registered to the contact via a uniqueID
  -> uniqueid
    -> id
    -> locationtype
    -> messages - Contact can have multiple messages. By default, all contacts have moderate, severe, extreme and info applied.
      -> remove
      -> minor
      -> moderate
      -> severe
      -> extreme
      -> info
~~~~

Possible additions

~~~~
-> hazard - denotes the hazards Contact is interested in and therefore available messages
-> updatedate - denotes time and date contact was last updated in the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard). Can be null.
-> updatereason - denotes reason for last contact update 
-> canceldate - denotes time and date contact was removed from the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard). Can be null.
-> cancelreason - denotes reason for removal of contact 
~~~~

Example

~~~~
contactid: 4059f6b4-b96b-4b0e-4794-e0900e5baf8c
contact: 07123456789
contactchannel:
 text
 telephone
contactlanguage: en-GB
contactstatus: active
contactyype: public
registerdate: 2016-08-02T12:00:39
registermethod: online
locations:
  uniqueid: 8a76d02e0a05260300e5bbbdb9d5b3b9
    id: 10024022371
    locationtype: prop
    messages:
      minor
      moderate
      severe
      extreme
      info
  uniqueid: 9b1cc82b0ab71fc519a2ccf069f6755a
    id: osgb4000000074573264
    locationtype: box
    messages:
      remove
      moderate
      severe
      extreme
      info
  ~~~~

Example for EDW

~~~~
contactid: 4059f6b4-b96b-4b0e-4794-e0900e5baf8c
contact: 07123456789
contactchannel:
 text
 telephone
contactlanguage: en-GB
contactstatus: active
contactyype: opt-out
registerdate: 2016-08-02T12:00:39
registermethod: auto-enrolled
locations:
  uniqueid: 9b18d8ca0ab71fc5195f0b665a6f96ec
  id: 063FWT23Barnes
  locationtype: ta
  messages:
    moderate
    severe
    extreme
    info
~~~~
