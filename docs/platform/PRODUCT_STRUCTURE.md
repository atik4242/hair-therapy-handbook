# Product Structure

This document describes a proposed HTP product structure. It does not describe implemented production services or medical functionality.

| Area | Purpose | Visibility | Data needed | Privacy risk | Medical boundary | Phase |
|---|---|---|---|---|---|---|
| HTP Knowledge | Publish reviewed, versioned knowledge modules | Public | Editorial text, sources, versions | Low; contributor metadata requires care | Information only; no diagnosis or personal recommendation | Existing foundation |
| HTP Journal | Record user-authored observations and notes | Private | User text, dates, optional tags | High; may contain sensitive information | Records what the user enters; no interpretation | Concept |
| HTP Plans | Store plans created and controlled by the user | Private | User-defined labels, dates, recurrence | High; may reveal health-related choices | No templates presented as treatment and no plan generation | Concept |
| HTP Reminders | Remind users about their own saved entries | Private | Reminder time, timezone, channel, neutral label | High; notifications may expose information | No treatment decision, dosage, or adherence judgment | Concept |
| HTP Photos | Maintain a private photo diary | Private | Image, date, user notes; minimal metadata | Very high; images can identify a person | No diagnosis, recognition, or automatic medical assessment | Future concept |
| HTP Reports | Summarise user-selected documentation | Private | Selected records and display preferences | High; aggregation may increase sensitivity | Descriptive documentation only; no outcome claim | Concept |
| HTH / PDF Export | Generate a portable handbook or personal record | Mixed at generation; private output when personal records are included | Selected public modules and explicitly selected private records | High for personalised exports | Export does not introduce medical logic | Prototype for public modules |

## Separation rules

- Public knowledge and private user records use separate data domains and permissions.
- Private data never becomes public content by default.
- Examples contain fictional, clearly labelled demonstration data only.
- All personal plans are user-created, editable, optional, and deletable.
- Current and future implementation status must remain visible in product documentation.

