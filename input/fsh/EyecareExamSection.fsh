Alias: $PhysicalExamSection = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.2.10

Profile: EyecareExamSection
Parent: $PhysicalExamSection
Id: EyecareExamSection
Description: "A constraint on Physical Exam Section that allows for specific eyecare exams."
* ^kind = #logical
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains resultOrganizer 1..1
* entry[resultOrganizer].organizer only VisualAcuityOrganizer or RefractionOrganizer