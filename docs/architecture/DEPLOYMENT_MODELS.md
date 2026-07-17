# Deployment Models

No production deployment model is selected in HTH-006. The comparison below guides later decisions.

| Model | Advantages | Disadvantages | Privacy | Maintenance | Backup responsibility | Photos and private data |
|---|---|---|---|---|---|---|
| Local use | Strong local control; can work offline; small service attack surface | Device loss, migration, and multi-device use are harder | Data can remain on device | User manages updates and device security | User | Suitable when secure local storage and export are provided |
| Self-hosting | Operator controls infrastructure and policies | Requires technical skill; configuration errors can expose data | Depends heavily on operator competence | Instance operator | Instance operator | Potentially suitable, with secure defaults and clear guidance |
| Centrally hosted service | Consistent updates, recovery, and cross-device access | Central target; provider bears significant trust and security duties | Requires strict separation, minimisation, and transparent processing | Service operator | Service operator | Possible only after qualified review and mature controls |
| Hybrid | Public knowledge can be hosted while private records remain local or use optional sync | More complex product and testing matrix | Supports data minimisation and user choice | Shared between project, operator, and user | Explicit per component | Strong long-term fit if boundaries remain understandable |

## Direction

A hybrid model is the current long-term direction, not a committed implementation. It can combine a public, versioned knowledge service with local-first private records and optional transparent synchronisation. Self-hosting capability should remain possible where it does not undermine safe defaults, migrations, or supportability.

The final model requires threat modelling, data-flow documentation, operational ownership, cost analysis, and qualified privacy, security, and legal review.

