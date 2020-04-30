# xws-contact-api: contact has a single language

## Hypothesis

Users only need to be sent flood warning information in a single language for each contact in the system. This simplicity makes it clear for the user what language they will get their flood warning information in for that contact. The simplicity will also aid in providing a simple data model. 

## Method

Analysis has been carried out on the current contact details in the Flood Warning System (FWS). We have examined how many individual contacts (defined as a single telephone number of email address) are registered in the system to receive warning information in more than one language (currently only English and Welsh are provided.) 

### Known limitations

We have only looked at fully registered contacts - due to data anonymity, we cannot see individual contacts added via our opt-in service. However, all opt-in customers are only registered in English as we don't know their language preference.

## Results

After analysis we found only 63 individual contacts that are registered to multiple languages in the Flood Warning System. This represents 0.005% of the total 1,229,331 unique fully registered contacts in the system.

## Benefits

* A simpler data model in the system
* Clear to the user what language they will receive warning information

## Issues

* Some users may want to receive messages in multiple languages, by designing our system to only support a single language for each contact we limit the ability to meet this user need

## Recommendations

Based on the observed very low number of users wanting multiple languages, we suggest that only a single language is supported for each contact in XWS. We need to ensure that if the message is not sent in the supported language they choose, then we default to sending information in English.


## Supporting data

SQL used:

~~~
SELECT "CONTACT",  "LANGUAGE", COUNT ("LANGUAGE") "NUMBER OF LANGUAGES"

FROM 

(SELECT numberaddress||channelname AS "CONTACT", rep_contact_view.language AS "LANGUAGE"

FROM rep_customer_view
INNER JOIN rep_contact_view
INNER JOIN rep_aoi_view ON rep_contact_view.propertyid = rep_aoi_view.propertyid ON rep_customer_view.recipientid = rep_aoi_view.recipientid

WHERE rep_contact_view.isremoved='N' AND rep_customer_view.status<>'cancelled' AND rep_aoi_view.currentaoi='Y'
AND numberaddress NOT IN ('Landline','Mobile')

UNION ALL

SELECT numberaddress||channelname AS "CONTACT", rep_contact_view.language AS "LANGUAGE"

FROM rep_customer_view
INNER JOIN rep_property_view ON rep_customer_view.recipientid = rep_property_view.recipientid
INNER JOIN rep_contact_view ON rep_property_view.propertyid = rep_contact_view.propertyid
WHERE rep_contact_view.isremoved='N' AND rep_customer_view.status<>'cancelled' AND rep_property_view.currentproperty='Y') AS "CONTACTS TO LOCATION"

GROUP BY "CONTACT",  "LANGUAGE"
~~~
