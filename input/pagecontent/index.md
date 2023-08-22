### Purpose
A lot of the focus on interoperability and exchanging of clinical data has been around mainstream EHRs.  However, there are a lot of clinical data systems that deal with specialty care, such as eyecare, dental, chiropractic and physiotherapy, to name a few examples.  This implementation guide (IG) provides consistent guidance for capturing key eyecare testing information in healthcare information technology (HIT) products.

### Audience
The audience for this IG includes architects and developers of eyecare HIT systems that exchange patient clinical data.  Business analysts and policy managers can also benefit from a basic understanding of the use of CDA templates across multiple implementation use cases.

### Design Considerations
This guide specifies a template based on the Physical Exam section that defines the eyecare examination codes along with the use of a Eyecare Results Organizer entry.  This Eyecare Exam template can be used in any of the existing C-CDA document types that include a Physical Exam section.  The Eyecare Exam template restricts the entries to different templates based on the ResultOrganizer which contains different eyecare ResultObservations.
The data elements represented in this guide are based on commonly used terms across the industry.  Many of these data elements are captured in Eyecare EHRs today.

### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}

### Intellectual Property Statements
{% include ip-statements.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IG Dependencies

This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}