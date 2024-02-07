Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/ResultOrganizer
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/ResultObservation
Alias: SNOMED = http://snomed.info/sct

Profile: DiagnosticAssessmentEyeTestOrganizer
Parent: $ResultOrganizer
Id: DiagnosticAssessmentEyeTestOrganizer
Description: "A constraint on ResultOrganizer that allows for DiagnosticAssessmentEyeTestObservations."
* ^kind = #logical
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.code = #164742009
* code.displayName = "Diagnostic Assessment Eye Tests"
* component[resultObs].observation only DiagnosticAssessmentEyeTestObservation

Profile: DiagnosticAssessmentEyeTestObservation
Parent: $ResultObservation
Id: DiagnosticAssessmentEyeTestObservation
Description: "A constraint on ResultObservation that defines eye diagnostic assessments."
* ^kind = #logical
* code.code from DiagnosticAssessmentEyeTestCodes (required)
* targetSiteCode 1..1 MS
* targetSiteCode.code from EyecareTargetSiteCodes (required)
* methodCode 0..1 MS
* methodCode.code from DryEyeQuestionnaireCodes (required)
* value[physical-quantity] 1..1
* value[coded] 0..0

ValueSet: DiagnosticAssessmentEyeTestCodes
Id: DiagnosticAssessmentEyeTestCodes
Title: "Diagnostic Assessment Eye Test Value Set"
Description: "Codes that represent different types of diagnostic eye assessments."
* ^experimental = true
* SNOMED#41633001
* SNOMED#1494008
* SNOMED#397547000
* SNOMED#251693007
* SNOMED#397529006
* SNOMED#782487009


ValueSet: DryEyeQuestionnaireCodes
Id: DryEyeQuestionnaireCodes
Title: "Dry Eye Questionnaire Value Set"
Description: "Codes that represent different types of dry eye questionnaires."
* ^experimental = true
* include codes from system DryEyeQuestionnaireCodes

CodeSystem: DryEyeQuestionnaireCodes
Id: DryEyeQuestionnaireCodes
Title: "Dry Eye Questionnaire Code System"
Description: "Codes that represent different types of dry eye questionnaires."
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
