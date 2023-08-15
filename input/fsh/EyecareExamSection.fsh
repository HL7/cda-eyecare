Alias: $PhysicalExamSection = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.2.10
Alias: $ResultOrganizer = http://hl7.org/cda/us/ccda/StructureDefinition/2.16.840.1.113883.10.20.22.4.1

Profile: EyecareExamSection
Parent: $PhysicalExamSection
Id: EyecareExamSection
* ^kind = #logical
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains resultOrganizer 1..1
* entry[resultOrganizer].organizer only $ResultOrganizer