# xws-message-api

## Design

The below is an first draft of the API attributes for the XWS Message API. The Message APi can be used by other systems to send messages directly from XWS, or queue them up for manual review and approval.

~~~~
-> MessageID - a randomly assigned unique id
-> TargetAreaCode - the TargetArea that this message refers to
-> Hazard - used in CAP
  -> Severity
  -> Urgency
  -> Certainty
  -> responseType
-> RealTimeInfo
-> RealTimeAdvice
-> MessageLanguage
-> MessageStatus
-> MessageType
-> Org
  -> OrgName
  -> OrgEmail
  -> OrgURL
  -> 

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
