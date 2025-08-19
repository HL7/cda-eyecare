Alias: $PhysicalExamSection = http://hl7.org/cda/us/ccda/StructureDefinition/PhysicalExamSection

Profile: EyecareExamSection
Parent: $PhysicalExamSection
Id: EyecareExamSection
Description: "A constraint on Physical Exam Section that allows for specific eyecare exams."
* ^kind = #logical
* insert LogicalModelTemplate(physicalexam-section, 2.16.840.1.113883.10.20.2.10.991, 2015-08-01)
* entry[longCareWound] 0..0
* entry contains resultOrganizer 1..1
* entry[resultOrganizer].organizer only VisualAcuityOrganizer or RefractionOrganizer or DiagnosticAssessmentEyeTestOrganizer or PosteriorSegmentOrganizer