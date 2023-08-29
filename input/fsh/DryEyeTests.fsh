Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.1
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.2
Alias: SNOMED = http://snomed.info/sct

Profile: DryEyeTestOrganizer
Parent: $ResultOrganizer
Id: DryEyeTestsOrganizer
Description: "A constraint on ResultOrganizer that allows for DryEyeTestObservations."
* ^kind = #logical
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.code = "164742009"
* code.displayName = "Dry Eye Tests"
* component[component1].observation only DryEyeTestObservation

Profile: DryEyeTestObservation
Parent: $ResultObservation
Id: DryEyeTestObservation
Description: "A constraint on ResultObservation that defines dry eye assessments using different questionnaires."
* ^kind = #logical
* code.code from DryEyeTestAssessmentCodes (required)
* value only PQ

ValueSet: DryEyeTestAssessmentCodes
Id: DryEyeTestAssessmentCodes
Title: "Dry Eye Test Assessment Value Set"
Description: "Codes that represent different types of dry eye assessments."
* ^experimental = true
* include codes from system DryEyeTestAssessmentCodes

CodeSystem: DryEyeTestAssessmentCodes
Id: DryEyeTestAssessmentCodes
Title: "Dry Eye Test Assessment Code System"
Description: "Codes that represent different types of dry eye assessments."
* ^experimental = true
* ^caseSensitive = true
* #NEI-VFQ25 "National Eye Institute Visual Function Questionnaire-25"
* #OSDI "Ocular Surface Disease Index"
* #SPEED "Standard Patient Evaluation of Eye Dryness Questionnaire"
* #DEQ-5 "Dry Eye Questionnaire"
* #CLDEQ-8 "Contact Lens Dry Eye Questionnaire"
* #IDEEL "Impact of Dry Eye in Everyday Life"
* #McCarty "McCarty Symptom Questionnaire"
* #McMonnies "McMonnies Questionnaire"
* #OCI "Ocular Comfort Index"
* #SANDE "Symptom Assessment in Dry Eye"
* #TERTC-DEQ "Texas Eye Research and Technology Center Dry Eye Questionnaire"
* #DEEP "Dry Eye Screening for Dry Eye Epidemiology Projects"
* #SIDEQ "Single Item Dry Eye Questionnaire"
* #DEQS "Dry Eye-Related Quality-of-life"
* #UNC-DEMS "University of North Carolina Dry Eye Management Scale"
* #CDERQOL "Chinese version of Dry Eye-Related Quality of Life"
