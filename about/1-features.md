---
layout: default
title: Features
description: Features of grano which have already been implemented.
menu_parent: about/index.md
permalink: features/
---

## Backend
* Social network data storage based on the Postgres database backend.
* Multi-tenancy based on projects, each describing a separate network.
* Revisions for property data of each entity and relationship in the database.
* User-editable data schemata (i.e. property definitions) for entities and relationships.
* Read/write web API exposing all system elements as REST resources.
* OAuth login against Twitter, Facebook and GitHub.
* Project-level access and editing control for users.
* Plugin interface to allow modular extensions of the core software.
* Asynchronous background processing support.
* Support for file uploads and bulk data import from CSV files.

## User Interface
* JavaScript-only user interface for managing and exploring grano projects.
* Support for project creation, schema editing and permissions management.
* Editing entities and relations.
* Bulk data import helper for CSV files.

## Extensions
* ElasticSearch-based full-text search and faceting support.
* OpenRefine entity name reconciliation endpoint (Freebase API emulation).
* OpenCorporates reconciliation client service to import company information.
