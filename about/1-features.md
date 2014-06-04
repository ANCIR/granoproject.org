---
layout: default
title: Features
description: Features of grano which have already been implemented.
menu_parent: about/index.md
permalink: features/
---

Grano is a rapidly developing open source software project. Some of the key features of the core engine as well as some extensions are listed here.

## Backend

* Social **network data storage** based on the Postgres database backend.
* **Multi-tenancy** based on projects, each describing a separate network.
* **Revisions** for property data of each entity and relationship in the database.
* User-editable **data [schemata](/docs/schema)** (i.e. property definitions) for entities and relationships.
* Read/write **web API** exposing all system elements as REST resources.
* Project-level **access control** for users.
* **Plugin interface** to allow modular extensions of the core software.
* File uploads and **bulk data import** from CSV files.
* **OAuth login** with support for Twitter, Facebook and GitHub.
* Asynchronous **background processing** support.


## User Interface

* AngularJS-based user interface for **managing and exploring grano projects**.
* Support for project creation, schema editing and permissions management.
* Editing entities and relations.
* Bulk data import helper for CSV files.


## Extensions

For more information, see [the extensions page](/extensions).

* ElasticSearch-based full-text search and faceting support.
* OpenRefine entity name reconciliation endpoint (Freebase API emulation).
* OpenCorporates reconciliation client service to import company information.
