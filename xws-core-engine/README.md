# xws-core-engine

## Objectives

* Creating the link between the Message (the what) to the TargetArea(s) (the where) to the Location (the who) to the Contact (the how) to calculate who should receive the message

## Description of work

* The design of the core engine must focus on 3 central principles
    * Accuracy - sending the right message to the right contact for the right area
    * Speed - the engine must send messages quickly to the end user
    * Efficiency - the engine must be efficient; removing duplicate messages before they are sent and prioritising messages by severity and urgency in real time

### MVP

* Contacts that require message for particular TargetArea are calculated quickly and accurately
* Duplicate Contacts are identifiable at the point of issue and removed
* Messages are added to the sending queue in a prioritised order based on severity and urgency
* Control over "call per second" rate per channel. Current cps rates per channel are:
    * Email = ?
    * Text = 16 cps
    * Telephone = 99 cps but can be varied on telephone area code

## Policy implications

* Agree prioritisation for each message type
