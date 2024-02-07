### Visual Acuity

Visual Acuity is represented by a [VisualAcuityOrganizer](StructureDefinition-VisualAcuityOrganizer.html) that contains [VisualAcuityObservations](StructureDefinition-VisualAcuityObservation.html).  It also includes a component observation [AidToVisionObservation](StructureDefinition-AidToVisionObservation.html) that indicates whether the visual acuity observations were done uncorrected, corrected with contact lenses, or corrected with eye classes.  Each VisualAcuityObservation has a code that indicates the specific type of visual acuity being documented along with a target site indicating left, right, or both eyes, and a method code indicating how the visual acuity was determined.  The result of the observation is a string.

### Refraction

Refraction is represented by a [RefractionOrganizer](StructureDefinition-RefractionOrganizer.html) that contains [RefactionObservations](StructureDefinition-RefractionObservation.html).  Each RefractionObservation contains a code that indicates the type of refraction measurement as well as a target site indicating left, right, or both eyes, and a method code indicating the how the refraction was measured.  The result of the observation can either be a physical quantity or a string.

### Diagnostic Eye Test Assessments

Diagnostic Eye Test Assessments are represented by a [DiagnosticAssessmentEyeTestOrganizer](StructureDefinition-DiagnosticAssessmentEyeTestOrganizer.html) that contains [DiagnosticAssessmentEyeTestObservations](StructureDefinition-DiagnosticAssessmentEyeTestObservation.html).  Each DiagnosticAssessmentEyeTestObservation contains a code that indicates the type of assessment as well as a target site indicating left, right, or both eyes.  For dry eye assessments, the method code is used to indicate the specific assessment tool used to determine the dye eye test result.  The result of the observation can be a physical quantity.

### Posterior Segment Observations

Posterior Segment are represented by a [PosteriorSegmentOrganizer](StructureDefinition-PosteriorSegmentOrganizer.html) that contains [PosteriorSegmentObservations](StructureDefinition-PosteriorSegmentObservation.html).  Each PosteriorSegmentObservation contains a code that indicates the type of observation as well as a target site indicating left, right, or both eyes.  The result of the observation can be a string.

### Examples

We have included an example of a [CCD HTML representation with eyecare information](eyecare-ccd.html).