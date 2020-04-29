# XWS Dictionary

1. [Terminology](#terminology)
2. [Data standards](#datastandards)
3. [Data sources](#datasources)

## Terminology <a name="terminology"></a>


| Name               | Description | 
| -------------      |------------ |
| Call               | A single attempt to reach a Contact with a Message. Can be via any ContactChannel |
| CancelDate         | Denotes time and date contact was removed from the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard). Can be null.
| CancelReason       | Denotes reason for Contact cancellation | 
| Certainty          | The certainty associated with the Message - used in CAP |
| Contact            | The email address, telephone number or http endpoint used to receive a Message |
| ContactChannel     | The channel type for the Contact i.e. email, text, telephone, XML |
| ContactID          | Unique reference for each Contact registered - used in CAP |
| ContactLanguage    | The language associated with each Contact. Must follow [ISO 639-1:2002](https://www.iso.org/standard/22109.html) i.e. en |
| ContactStatus      | Denotes if Contact is active or removed |
| ContactType        | Denotes user category of contact i.e. Public, Partner, Opt-out, Staff, System |
| EventCategory      | Denotes the category of the Event i.e. Met - used in CAP. |
| EventType          | The event type related to Category and Message i.e. Flood - used in CAP. Linked to EventCategory, Org(s) |
| InfoAdvice         | The incident specific advice selected by the Staff during message creation process. Links to EventType, OrgTeam, Severity, Urgency, Certainty, ResponseType, Message |
| InfoDetail         | The incident specific real time info inputted by the Staff during message creation process. Links to EventType, OrgTeam, Severity, Urgency, Certainty, ResponseType, Message |
| InfoHeadline       | The incident specific headline advice inputted by the Staff during message creation process. Links to EventType, OrgTeam, Severity, Urgency, Certainty, ResponseType, Message |
| Location           | The location associated with a Contact |
| LocationRank       | A hierarchic "rank" associated with a LocationType. Used to filter out duplicate Calls |
| LocationType       | Denotes the type of a Location e.g. property, TargetArea, village, town, city |
| Message            | A message with alerting information. Each Message can contain multiple MessageVariants |
| MessageID          | Unique reference for each Message issued - used in CAP |
| MessageLanguage    | The language associated with each MessageVariant |
| MessageStatus      | Denotes approriate handling of the Message - used in CAP e.g. Actual, Test |
| MessageType        | The nature of the message an internal user wants to send - this can be Issue, Update or Remove |
| MessageVariant     | A single template within a Message. Links to ContactChannel, MessageLanguage, Message |
| OptionalMessages   | Allows user to dictate what optional messages they would like for their contact |
| Org                | Public facing name for the organsiation using the service - used in CAP |
| OrgEmail           | Public facing email for the organsiation using the service - used in CAP. Linked to Org |
| OrgTeam            | The team within an Org. Links to TargetArea, Org |
| OrgTeamEmail       | Public facing email address associated with an OrgTeam. Links to OrgTeam |
| OrgTeamTel        | Public facing telpehone number associated with an OrgTeam. Links to OrgTeam |
| OrgTel             | Public facing telephone number for the organsiation using the service - used in CAP. Linked to Org|
| OrgURL             | Public facing URL for the organsiation using the service - used in CAP. Linked to Org |
| Permissions        | Set of access rights that allow interaction with different parts of the service |
| RegisterDate       | Denotes time and date contact was added to the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard) |
| RegisterMethod     | Denotes method of contact registration |
| ResponseType       | Denotes the type of action required for the Event - used in CAP |
| Severity           | The severity associated with the Message - used in CAP |
| Staff              | The specific internal user accessing the internal service. Should be linked to Org(s), OrgTeam(s), EventType(s), Permission(s) |
| TargetArea         | The area the MessageType will be sent to. Linked to OrgTeam. |
| TargetAreaCategory | Denotes the category of the TargetArea. Controls the avaialable Message. Linked to EventType |
| TargetAreaStatus   | Denotes the status of the TargetArea e.g. inactive, active, deactive |
| UpdateDate         | Denotes time and date contact was last updated in the system. Should be represented using [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard). Can be null. |
| UpdateReason       | Denotes reason for last contact update |
| Urgency            | The urgency associated with the MessageType - used in CAP |
| User               | A user of the service e.g. citizen, professional partner |
| ValidationCode     | A random code sent to the Contact via ContactChannel - used to validate access to Contact |




## Data standards to use <a name="datastandards"></a>

| Name                                        | Source          | Standard  | 
| -------------                               |------------     |---------- |
| Language                                    | GDS             | https://www.gov.uk/government/publications/open-standards-for-government/language-tags |
| Date-times and time-stamps                  | GDS             | https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard |
| Country codes                               | GDS             | https://www.gov.uk/government/publications/open-standards-for-government/country-codes |
| Local authorities in England                | GDS             | https://www.registers.service.gov.uk/registers/local-authority-eng |
| Local authorities in Scotland               | GDS             | https://www.registers.service.gov.uk/registers/local-authority-sct |
| Principal local authorities in Wales        | GDS             | https://www.registers.service.gov.uk/registers/principal-local-authority |
| Local authority type                        | GDS             | https://www.registers.service.gov.uk/registers/local-authority-type |
| Government org names                        | GDS             | https://www.registers.service.gov.uk/registers/government-organisation |
| Environment Agency Addressing Standard      | EA              | https://defra.sharepoint.com/sites/def-contentcloud/ |
| Environment Agency Public Facing Area Names | EA              | https://defra.sharepoint.com/sites/def-contentcloud/ |
| Environment Agency Flood Cause              | EA              | https://defra.sharepoint.com/sites/def-contentcloud/ |
| Environment Agency Flood Source             | EA              | https://defra.sharepoint.com/sites/def-contentcloud/ |






## Data sources to use <a name="datasources"></a>

| Name           | Source                 | Filters  |
| -------------  | ------------           | ------   |
| Location       | OS Open Names          | Remove Scotland, filter to populatedPlace |
| Addresses      | OS AddressBase Premium |          |
