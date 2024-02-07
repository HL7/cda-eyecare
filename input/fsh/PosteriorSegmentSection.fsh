Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/ResultOrganizer
Alias: $ResultObservation = http://hl7.org/cda/us/ccda/StructureDefinition/ResultObservation
Alias: SNOMED = http://snomed.info/sct

Profile: PosteriorSegmentOrganizer
Parent: $ResultOrganizer
Id: PosteriorSegmentOrganizer
Description: "A constraint on ResultOrganizer that allows for observations about the Posterior Segment."
* ^kind = #logical
* code.code from PosteriorSegmentOrganizerCodes (required)
* component[resultObs].observation only PosteriorSegmentObservation

Profile: PosteriorSegmentObservation
Parent: $ResultObservation
Id: PosteriorSegmentObservation
Description: "A constraint on ResultObservation that defines posterior segment structure observations."
* ^kind = #logical
* code.code from PosteriorSegmentObservationCodes (required)
* targetSiteCode 1..1 MS
* targetSiteCode.code from EyecareTargetSiteCodes (required)
* value[coded] 0..0
* value[physical-quantity] 0..0
* value only ST

ValueSet: PosteriorSegmentOrganizerCodes
Id: PosteriorSegmentOrganizerCodes
Title: "Posterior Segment Organizer Codes"
Description: "Codes that represent different types of posterior segment batteries."
* ^experimental = true
* SNOMED#1230022000
* SNOMED#81016008
* SNOMED#45950005
* SNOMED#362517001
* SNOMED#728657008

ValueSet: PosteriorSegmentObservationCodes
Id: PosteriorSegmentObservationCodes
Title: "Posterior Segment Observation Codes"
Description: "Codes that represent different types of posterior segment tests."
* ^experimental = true
* SNOMED#39832008
* SNOMED#247132001
* SNOMED#247133006
* SNOMED#735661006
* SNOMED#247134000
* SNOMED#24713008
* SNOMED#403696001
* SNOMED#75971007
* SNOMED#204173008
* SNOMED#28758002
* SNOMED#247230002
* SNOMED#111527005
* SNOMED#423488006
* SNOMED#423341008
* SNOMED#302200001
* SNOMED#95499004
* SNOMED#247223008
* SNOMED#33629003
* SNOMED#247225001
* SNOMED#76976005
* SNOMED#14460007
* SNOMED#786076007
* SNOMED#786078008
* SNOMED#44295002
* SNOMED#420535003
* SNOMED#424728002
* SNOMED#392163005
* SNOMED#247099009
* SNOMED#230506000
* SNOMED#1237370002
* SNOMED#1111534007
* SNOMED#264479005
* SNOMED#247154004
* SNOMED#420501001
* SNOMED#420272005
* SNOMED#420779002
* SNOMED#247146001
* SNOMED#37231002
* SNOMED#193387007
* SNOMED#312912001
* SNOMED#870529009
* SNOMED#312956001
* SNOMED#367649002
* SNOMED#18410006
* SNOMED#49473001
* SNOMED#232006002
* SNOMED#443437004
* SNOMED#700373001
* SNOMED#424169002
* SNOMED#421506003
* SNOMED#232067008
* SNOMED#421843005
* SNOMED#276436007
* SNOMED#70099003
* SNOMED#232050001
* SNOMED#247162007
* SNOMED#737579002
* SNOMED#414875008
* SNOMED#414173003
* SNOMED#390834004
* SNOMED#59276001
* SNOMED#247167001
* SNOMED#42059000
* SNOMED#3577000
* SNOMED#83405000
* SNOMED#65545003
* SNOMED#232001007
* SNOMED#247187000
* SNOMED#247186009
* SNOMED#247184007
* SNOMED#69134001
* SNOMED#247179001
* SNOMED#95690009
* SNOMED#424358006
* SNOMED#61536007
* SNOMED#423673009
* SNOMED#193341001
* SNOMED#232004004
