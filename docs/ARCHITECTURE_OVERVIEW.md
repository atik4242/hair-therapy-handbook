# HTP Target Architecture Overview

This summary defines responsibilities and boundaries for the future HTP and its HTH export. It does not implement module selection, conflict resolution, diagnosis, or treatment logic. The detailed technology-neutral model is in [Platform Architecture](architecture/PLATFORM_ARCHITECTURE.md).

## Knowledge Base

Stores versioned, neutral statements, terminology, provenance, limitations, and editorial status. It does not store personal records.

## Module Library

Packages reviewed content and presentation metadata into reusable units. Admission follows the [Product Admission Policy](PRODUCT_ADMISSION_POLICY.md).

## Evidence Registry

Stores source identifiers, claim relationships, retrieval dates, evidence status, limitations, and review metadata under the [Evidence Policy](EVIDENCE_POLICY.md).

## Interaction Rules

Stores traceable precaution and interaction notices. Rules surface predefined information only; they do not diagnose, calculate treatment, or select therapy.

## Private user workspace

Stores private configuration and personal documentation separately from public knowledge. Entries control documentation and presentation, not medical conclusions.

## Illustration Library

Stores versioned visual assets with provenance, accessibility text, review state, and module relationships. Illustrations must not imply unsupported anatomy, mechanism, or outcome.

## PDF Generator

Produces deterministic, print-ready publications from approved modules and configuration. It must preserve citations, limitations, version information, and accessibility structure.

## Responsibility boundaries

Shared modules remain independent from private user records. Evidence metadata remains independent from presentation. Rules remain independent from diagnostic or recommendation engines, which are outside HTP/HTH scope.

