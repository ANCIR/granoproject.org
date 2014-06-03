---
layout: default
title: Development roadmap
description: Planned functionality for grano, a toolkit that helps to map influence in government and business.
---

## Improved user interface
* Testing with non-technical users.
* Workflow: published vs. draft objects for the Poderopedia use case.
* Bulk editing and adding of entities and relations for manual entry [Poderopedia use case](http://poderopedia.org/).
* Internationalisation of the interface and localisation to Spanish
* Various items: featured entities; entity images; WYSIWYG text editing

## Sources and data provenance
* Managing sources as entities in their own right, with explicit metadata on trust levels.
* Filtering data by source trust levels.

## Query and analytical capabilities
* Conduct a workshop to determine typical queries in journalistic settings. 
* Develop a custom query language or tie in an existing tool like Neo4J.
* Provide a simple, non-visual query builder and results interface for analysis. Research existing query builders and re-use if possible.
* Determine when recursive query ability (i.e. shortest paths) and graph metrics (e.g. centrality, betweenness) are journalistically useful.
* Explore the implementation of pre-defined queries (i.e. red flags for corruption based on entity/relation interlock): how much metadata would be required?

## Data visualisation
* Build a custom network map builder, oriented along the lines of the [LittleSis map tool](http://littlesis.org/map/101) - this should be based on the existing grano-explorer.
* Consider re-use of Poderopedia's analytical visualisations, especially the [simple D3 tool](http://poderopedia.github.io/panama-network/).
* Explore integration of time-based visualisations, based on [CargoGrafias](http://cargografias.org/). 

## Grano SDK
* Template repository for grano extensions; with documentation on how to develop plugins with their own API and data model.
* Template for front-end news apps with entity and relationship profiles (like [MachtVZ](http://machtvz.okfn.de/) and [OpenInterests.eu](http://openinterests.eu/)).
* Consider developing a JavaScript client library.

## Text mining and entity extraction
* Support entity extraction service based on the entities present in a specific grano project, ideally based on [Stanford NER](http://nlp.stanford.edu/software/CRF-NER.shtml).
* Explore re-use and development of stand-alone tools for manual/computer-assisted relationship extraction from news content (MMA Dexter?).

## Activity feeds / narrative relationships
* Prototype narrative connections between entities, as shown in [this mockup](http://opendatalabs.org/misc/demo/grano/_mockup/)
* Following feeds and customised timelines.
* Generate narrative updates from entity/relationship CRUD operations.

## Software as a service
* Work out a partnership with a commercial organisation to operate a hosted instance of grano.
* Develop a revenue model for the service.
