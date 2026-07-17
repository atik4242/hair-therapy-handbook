# HTP Platform Vision

## Purpose

Hair Therapy Platform (HTP) is a long-term, modular, evidence-oriented knowledge and documentation platform. Its public areas make reviewed knowledge modules available; its private areas let users record and manage information they define themselves. Hair Therapy Handbook (HTH) remains a documentation and PDF export produced from HTP modules and user-selected records.

HTP is not currently a production health service. No user accounts, hosted private storage, reminders, or cloud analysis are implemented in this milestone. The architecture documents a possible future platform without selecting a technology stack.

Trust is a central product objective. HTP must make boundaries, uncertainty, data use, and the difference between current and proposed capabilities understandable.

## Core Principles

### 1. HTP informs — HTP does not diagnose

The platform provides evidence-based information, but it does not create diagnoses and does not replace assessment by a qualified healthcare professional.

### 2. HTP documents — HTP does not recommend therapy

The platform helps users document measures they have chosen themselves. It does not make therapy recommendations and does not create treatment plans.

### 3. HTP reminds — HTP does not decide for the user

Reminders apply exclusively to entries created by the user. The platform makes no decisions about treatments, dosages, or whether a measure should be continued.

## Product implications

These principles are mandatory constraints for architecture decisions, user-interface design, product development, and all new features.

- Personal plans, checklists, and reminders must be user-created, editable, optional, and deletable.
- The platform must not ship a fixed schedule as a standard or recommended treatment plan.
- Examples, sample data, and mock-ups must be clearly labelled as non-medical demonstrations of functionality.
- Information and personal documentation must remain visibly separated.
- A feature must not infer, rank, select, start, stop, or modify a treatment, dosage, or schedule for a user.
- Reminder delivery must reflect only the user's saved entry and explicit reminder settings.

## Trust and data principles

### Trust before Revenue

User trust takes precedence over short-term revenue. HTP must not generate revenue by selling or marketing personal data, serving advertising based on personal or health-related data, or sharing data with data brokers. Hidden trackers, manipulative dark patterns, and artificial barriers to exporting or deleting personal data are incompatible with the platform vision.

Privacy is not a premium feature. Users retain control over their personal data, and only data necessary for a declared purpose should be collected. When viable options are otherwise comparable, the more user-friendly and data-minimising option should be chosen.

These are project commitments and design constraints, not claims of legal certification or complete compliance with any particular law. Qualified privacy, security, and legal review is required before public production use.

## Platform areas

- **Public knowledge:** reviewed modules, evidence metadata, versions, and editorial notices.
- **Private workspace:** journal entries, user-created plans, reminder preferences, photos, and reports selected by the user.
- **Handbook export:** a reproducible HTH PDF or document assembled from eligible public modules and explicitly selected private records.

Public and private areas must be separated in data models, permissions, storage, and interfaces. Private records do not become public knowledge and must not influence general recommendations.

## Feature compatibility gate

Every proposed feature must be assessed against all three Core Principles before implementation and again during review. A feature that conflicts with any principle must be redesigned or rejected. Passing this gate does not replace the project's privacy, evidence, accessibility, security, and editorial reviews.
