# HTH Project Charter

## Vision

Hair Therapy Handbook (HTH) is an open, modular knowledge and documentation platform. It aims to make sourced information, neutral editorial modules, personal record-keeping, and reproducible PDF generation understandable and maintainable without selecting treatment for a user.

## Purpose and audiences

HTH provides a structured foundation for readers, contributors, editors, maintainers, and optional scientific reviewers. It supports transparent research records, modular handbook production, and private offline documentation.

## Scope

The project covers:

- a versioned knowledge base;
- a reusable module library;
- an evidence registry;
- rule-based precaution and interaction notices;
- configurable personal profiles kept outside the public repository;
- an illustration library;
- a reproducible PDF generator.

## Explicit boundaries

HTH is not a medical-advice platform. It does not diagnose, choose treatment, make individual therapy recommendations, provide emergency assistance, or replace examination and treatment by qualified professionals.

The project does not promise completeness, accuracy for an individual case, therapeutic benefit, or continuous specialist review. Personal profiles must not be committed to the public repository.

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

This charter is interpreted together with the [Editorial Principles](../EDITORIAL_PRINCIPLES.md), [Governance](GOVERNANCE.md), [Evidence Policy](EVIDENCE_POLICY.md), [Product Admission Policy](PRODUCT_ADMISSION_POLICY.md), [Correction Policy](CORRECTION_POLICY.md), and [Architecture Overview](ARCHITECTURE_OVERVIEW.md).

