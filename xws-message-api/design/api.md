# xws-message-api

## Design

The below is an first draft of the API attributes for the XWS Message API. The Message API can be used by other systems to send messages directly from XWS, or queue them up for manual review and approval.

~~~~
-> MessageID - a randomly assigned unique id
-> TargetAreaCode - the TargetArea that this message refers to. Always picks active TA.
-> CAP
  -> EventCategory
  -> EventType
  -> Severity
  -> Urgency
  -> Certainty
  -> responseType
  -> MessageStatus
  -> Org
  -> OrgEmail
  -> OrgURL
  -> OrgTel
  -> OrgURL
  -> MessageLanguage
    -> Info
      -> InfoHeadline
      -> InfoPublic
      -> InfoPartner
      -> AdvicePublic
      -> AdvicePartner
-> MessageType
-> Automation
  -> Full
  -> Semi
-> Geo
~~~~

Example

~~~~


~~~~
