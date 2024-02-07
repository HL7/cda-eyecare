Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/ResultOrganizer
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/ResultObservation
Alias: SNOMED = http://snomed.info/sct

Profile: RefractionOrganizer
Parent: $ResultOrganizer
Id: RefractionOrganizer
Description: "A constraint on ResultOrganizer that allows for RefractionObservations."
* ^kind = #logical
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.code = #251794006
* code.displayName = "Refraction measurement"
* component[resultObs].observation only RefractionObservation

Profile: RefractionObservation
Parent: $ResultObservation
Id: RefractionObservation
Description: "A constraint on ResultObservation that defines eyecare refraction measurements."
* ^kind = #logical
* code.code from RefractionObservationCodes (required)
* targetSiteCode 1..1 MS
* targetSiteCode.code from EyecareTargetSiteCodes (required)
* methodCode 1..1 MS
* methodCode.code from RefractionMethodCodes (required)
* value[coded] 0..0
* value only PQ or ST

ValueSet: RefractionObservationCodes
Id: RefractionObservationCodes
Title: "Refraction Observation Codes"
Description: "Codes that represent different types of refraction measurement tests."
* ^experimental = true
* SNOMED#277889008
* SNOMED#251795007
* SNOMED#251797004
* SNOMED#251799001
* SNOMED#397282003
* SNOMED#397277005
* SNOMED#246223004
* SNOMED#251739003
* SNOMED#251743004
* SNOMED#419475002

ValueSet: RefractionMethodCodes
Id: RefractionMethodCodes
Title: "Refraction Method Codes"
Description: "Methods that are used to measure refraction."
* ^experimental = true
* SNOMED#397277005
* SNOMED#297276001
* SNOMED#297524001
* SNOMED#297278000
* SNOMED#419759001
* SNOMED#397250001
* SNOMED#420380001
* SNOMED#397248009
