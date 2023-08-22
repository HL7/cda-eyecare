### Visual Acuity

Visual Acuity is represented by a [VisualAcuityOrganizer](StructureDefinition-VisualAcuityOrganizer.html) that contains [VisualAcuityObservations](StructureDefinition-VisualAcuityObservation.html).  Each VisualAcuityObservation has a code that indicates the specific type of visual acuity being documented along with a target site indicating left, right, or both eyes, and a method code indicating how the visual acuity was determined.  It also includes a component [AidToVisionObservation](StructureDefinition-AidToVisionObservation.html) that indicates whether the visual acuity observation was done uncorrected, corrected with contact lenses, or corrected with eye classes.  The result of the observation is a string.

### Refraction

Refraction is represented by a [RefractionOrganizer](StructureDefinition-RefractionOrganizer.html) that contains [RefactionObservations](StructureDefinition-RefractionObservation.html).  Each RefractionObservation contains a code that indicates the type of refraction measurement as well as a target site indicating left, right, or both eyes, and a method code indicating the how the refraction was measured.  The result of the observation can either be a physical quantity or a string.

