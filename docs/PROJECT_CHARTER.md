# HTH Project Charter

## Vision

Hair Therapy Platform (HTP) is the future modular knowledge and documentation platform. Hair Therapy Handbook (HTH) is its handbook and export format. The project aims to make sourced information, neutral editorial modules, personal record-keeping, and reproducible PDF generation understandable and maintainable without selecting treatment for a user.

## Purpose and audiences

HTP provides a structured foundation for readers, contributors, editors, maintainers, and optional scientific reviewers. It supports transparent research records, modular handbook production, and conceptual private documentation areas.

## Scope

The project covers:

- a versioned knowledge base;
- a reusable module library;
- an evidence registry;
- rule-based precaution and interaction notices;
- future private user workspaces kept separate from public content;
- an illustration library;
- a reproducible PDF generator.

## Explicit boundaries

HTP/HTH is not a medical-advice service. It does not diagnose, choose treatment, make individual therapy recommendations, provide emergency assistance, or replace examination and treatment by qualified professionals.

The project does not promise completeness, accuracy for an individual case, therapeutic benefit, or continuous specialist review. Personal profiles must not be committed to the public repository.

## Trust and data commitments

**Trust before Revenue** is binding project policy. Trust takes precedence over short-term revenue. HTP must not sell or market personal data, use personal or health-related data for targeted advertising, share it with data brokers, deploy hidden trackers, or use manipulative dark patterns.

Privacy protections, data export, and account deletion must not be reserved for paying users or made artificially difficult. Users retain control over their data; collection must be limited to declared, necessary purposes. Where uncertainty remains between viable approaches, the more user-friendly and data-minimising approach is preferred.

These commitments do not assert legal certification or complete compliance with a specific privacy regime. Public production operation requires qualified privacy, security, and legal review.

## Core Principles

The interactive Hair Therapy Platform (HTP) layer follows three mandatory principles:

1. **HTP informs — HTP does not diagnose.**
2. **HTP documents — HTP does not recommend therapy.**
3. **HTP reminds — HTP does not decide for the user.**

These principles govern architecture, user-interface design, product development, and feature review. Their definitions, product implications, and feature compatibility gate are specified in the [Platform Vision](PLATFORM_VISION.md).

## Long-term objectives

- maintain a correctable and traceable modular knowledge base;
- make evidence status and uncertainty visible;
- separate factual content from personal documentation;
- generate accessible, print-ready handbooks from reviewed modules;
- support precaution notices without implementing diagnosis or treatment selection.

## System roles

### Handbook

The handbook is a readable publication assembled from approved modules. It communicates provenance, limitations, and version information.

### Knowledge base

The knowledge base stores neutral, source-oriented statements and metadata. It is not a decision engine.

### PDF generator

The generator transforms configured modules into a reproducible document. It must not introduce medical logic that is absent from reviewed source modules.

### Personal profiles

Profiles configure presentation and private record-keeping. They remain separate from shared content and do not authorize individualized recommendations.

### Interaction and precaution rules

Rules may surface predefined cautions or incompatibility notices. They must be traceable, conservatively worded, reviewed, and clearly distinguished from diagnosis or treatment advice.

## Authority and related policies

This charter is interpreted together with the [Platform Vision](PLATFORM_VISION.md), [Editorial Principles](EDITORIAL_PRINCIPLES.md), [Governance](GOVERNANCE.md), [Evidence Policy](EVIDENCE_POLICY.md), [Product Admission Policy](PRODUCT_ADMISSION_POLICY.md), [Correction Policy](CORRECTION_POLICY.md), and [Architecture Overview](ARCHITECTURE_OVERVIEW.md).

