Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.1
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.2
Alias: SNOMED = http://snomed.info/sct

Profile: VisualAcuityOrganizer
Parent: $ResultOrganizer
Id: VisualAcuityOrganizer
Description: "A constraint on ResultOrganizer that allows for VisualAcuityObservations."
* ^kind = #logical
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.code = "363983007"
* code.displayName = "Visual Acuity"
* component[component1].observation only VisualAcuityObservation

Profile: VisualAcuityObservation
Parent: $ResultObservation
Id: VisualAcuityObservation
Description: "A constraint on ResultObservation that defines eyecare Visual Acuity measurements."
* ^kind = #logical
* code.code from VisualAcuityObservationCodes (required)
* targetSiteCode 1..1 MS
* targetSiteCode.code from EyecareTargetSiteCodes (required)
* methodCode 1..1 MS
* methodCode.code from VisualAcuityMethodCodes (required)
* value only ST
* entryRelationship.observation only AidToVisionObservation

Profile: AidToVisionObservation
Parent: $ResultObservation
Id: AidToVisionObservation
Description: "A constraint on ResultObservation that is used to indicate the type of vision aids used in a Visual Acuity measurement."
* ^kind = #logical
* code.code = "257192006"
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.displayName = "Aid to vision"
* value only CD
* value.code from AidToVisionCodes (required)

ValueSet: VisualAcuityObservationCodes
Id: VisualAcuityObservationCodes
Title: "Visual Acuity Observation Codes"
Description: "Codes that represent different types of visual acuity measurement tests."
* ^experimental = true
* SNOMED#251739003
* SNOMED#251743004
* SNOMED#419475002

ValueSet: EyecareTargetSiteCodes
Id: EyecareTargetSiteCodes
Title: "Eyecare Target Site Codes"
Description: "Codes that represent left, right, or both eyes, using as target sites of eyecare observations."
* ^experimental = true
* SNOMED#362502000
* SNOMED#362503005
* SNOMED#362508001

ValueSet: VisualAcuityMethodCodes
Id: VisualAcuityMethodCodes
Title: "Visual Acuity Method Codes"
Description: "Methods that are used to measure visual acuity."
* ^experimental = true
* SNOMED#252973004

ValueSet: AidToVisionCodes
Id: AidToVisionCodes
Title: "Aid to Vision Codes"
Description: "Types of vision aids that can be used in a visual acuity measurement."
* ^experimental = true
* SNOMED#57368009
* SNOMED#50121007
