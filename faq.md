---
layout: default
title: Frequently Asked Questions
---

### Who would use this?

Grano is intended to become a power tool for investigations run by journalists and activists. At the moment, there is still a need for some customization of code in a new installation of grano, but we're hoping to reduce the amount of technical knowledge required to set up a new grano project so that any reporter or researcher can do it within a few minutes.

### What types of entities and relations are supported?

Grano itself doesn't specify types of entities and relations, but rather gives users the option to model the data in the way that they need it for their work. To that end, project administrators can define so-called schemata for entities and relations. A typical schema might be for a person, or a family tie.

In the future, we hope to define a small set of default schemata, based on external data standards such as [Popolo](http://popoloproject.com/), [Schema.org](http://schema.org) and [FOAF](http://www.foaf-project.org/). This way data from multiple projects could be shared and re-used easily. 

### How does this relate to the Popolo data standard?

[Popolo](http://popoloproject.com/) is a set of specifications for a data models that can be re-used across civic applications. This includes standards for information about people, organisations and membership relationships - the types of entities and links that might be typical parts of a grano project.

We hope to provide both a Popolo importer for grano and, later, a grano extension that exposes Popolo-conformant data via the API. At the same time, grano allows users to define types of entities and relations which are not covered by the Popolo specification (e.g. court cases, financial transactions); thus the interoperability between these two worlds will remain lossy.

### Why don't you use a graph database?

While grano does construct a graph of entities, it also manages a lot of other information: where the data came from, how much it can be trusted, how it changed over time, who can access it, etc. All of this is necessary for a journalistic use case, but doesn't really belong to the graph. In that sense, the graph is a metaphor, but in reality, a relational database is a better fit for the information we need to store.

At the same time, graph databases have great ways of querying the data, many of which need a lot of effort to run in a relational database. This is why we want to explore mirroring grano data into graph databases like Neo4J for improved query access.

### Why don't you use linked data/RDF?

The reasons for not using linked data are, in many ways, similar to those for not using a graph database more generally. Further, most of the available open source tooling for linked data is less mature than the current generation of general purpose graph databases.

### Don't tools like this already exist?

Many of them; we've even [created a list](/survey)! 


