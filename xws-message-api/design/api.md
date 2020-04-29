# xws-message-api

## Design

The below is an first draft of the API attributes for the XWS Message API. The Message APi can be used by other systems to send messages directly from XWS, or queue them up for manual review and approval.

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
-> Info
  -> InfoHeadline
  -> InfoPublic
  -> InfoPartner
  -> AdvicePublic
  -> AdvicePartner
-> MessageLanguage
-> MessageType
-> Automation
  -> Full
  -> Semi
  -> None


~~~~

Example

~~~~


~~~~
