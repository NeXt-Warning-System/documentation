# xws-core-engine

## Objectives

* Creating the link between the Message (the what) to the TargetArea(s) (the where) to the Location (the who) to the Contact (the how) to calculate who should receive the message
* The core engine needs to link together the message, message priority, message language, user type, target area, user locations, channel priority, channel type, user optional message preferences, user language with the user contacts in the system

## Description of work

* The design of the core engine must focus on 3 central principles
    * Accuracy - sending the right message to the right contact for the right area
    * Speed - the engine must send messages quickly to the end user
    * Efficiency - it needs to work incredibly efficiently and reliably – without this core engine, the rest of the system is near useless. It must allow for removing duplicate messages before they are sent and prioritising messages by severity and urgency in real time

### MVP

* Contacts that require message for particular TargetArea are calculated quickly and accurately
* Duplicate Contacts are identifiable at the point of issue and removed
* Messages are added to the sending queue in a prioritised order based on severity and urgency
* Control over "call per second" rate per channel. Current cps rates per channel are:
    * Email = TBC
    * Text = 16 cps
    * Telephone = 50 cps (MVP inclues ability to vary cps by telephone 7-digit prefix)

## Policy implications

* Agree prioritisation for each message type
* Agree prioritisation for each channel type - it may be useful to issue XML messages to downtream systems as a priority as we point to those systems in other channels (i.e. email and text)

