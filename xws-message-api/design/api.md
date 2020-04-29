# xws-message-api

## Design

The below is an first draft of the API attributes for the XWS Message API. The Message API can be used by other systems to send messages directly from XWS, or queue them up for manual review and approval.

~~~~
-> MessageID - a randomly assigned unique id that is created when message is sent for approval or issued
-> TargetAreaCode - the TargetArea that this message refers to. Always picks active TA.
-> CAP
  -> Severity
  -> Urgency
  -> Certainty
  -> responseType
  -> MessageStatus - code denoting the appropriate handling of the alert message i.e. Actual, Test
  -> MessageLanguage - i.e. en-GB
    -> Info
      -> InfoHeadline
      -> InfoPublic
      -> InfoPartner
      -> AdvicePublic
      -> AdvicePartner
-> MessageType - for example, issue, re-issue, systems update, remove. Used in <event> and <msgType> feature in CAP
-> Automation
  -> Full - goes straight to sending queue
  -> Semi - goes straight to approval queue for manual approval
-> SendDate - allows for automation at a future date. Default is current date and time to allow for instant issuing once approved

~~~~

Example

~~~~


~~~~
