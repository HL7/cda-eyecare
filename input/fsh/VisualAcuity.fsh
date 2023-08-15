Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.1
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.2
Alias: SNOMED = http://snomed.info/sct

Profile: VisualAcuityOrganizer
Parent: $ResultOrganizer
Id: VisualAcuityOrganizer
* ^kind = #logical
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.code = "363983007"
* code.displayName = "Visual Acuity"
* component[component1].observation only VisualAcuityObservation

Profile: VisualAcuityObservation
Parent: $ResultObservation
Id: VisualAcuityObservation
* ^kind = #logical
* code.code from VisualAcuityObservationCodes (required)
* targetSiteCode 1..1 MS
* targetSiteCode.code from VisualAcuityTargetSiteCodes (required)
* methodCode 1..1 MS
* methodCode.code from VisualAcuityMethodCodes (required)
* entryRelationship.observation only AidToVisionObservation

Profile: AidToVisionObservation
Parent: $ResultObservation
Id: AidToVisionObservation
* ^kind = #logical
* code.code = "257192006"
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.displayName = "Aid to vision"

ValueSet: VisualAcuityObservationCodes
Id: VisualAcuityObservationCodes
* SNOMED#251739003
* SNOMED#251743004
* SNOMED#419475002

ValueSet: VisualAcuityTargetSiteCodes
Id: VisualAcuityTargetSiteCodes
* SNOMED#362502000
* SNOMED#362503005
* SNOMED#362508001

ValueSet: VisualAcuityMethodCodes
Id: VisualAcuityMethodCodes
* SNOMED#252973004

ValueSet: AidToVisionCodes
Id: AidToVisionCodes
* SNOMED#57368009
* SNOMED#50121007