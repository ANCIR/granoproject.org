---
layout: default
title: Entity and Relation Schemata
menu_title: Schemata
menu_parent: docs/index.md
permalink: schema/
---

To keep the ``grano`` data model adaptable to specific use cases, the platform allows users to define so-scalled schemata for each project. They apply either to entities or to relations (never both). While each relation can only be associated with one schema, entities can combine several schemata (e.g. they can be a company, but also a lobby register entry).

The main task of a schema is to define a set of attributes, which describe what fields can be filled with data for an entity or relation. 


## Base schema

All entities in ``grano`` are automatically associated with the
``base`` schema. This schema defines a ``name`` property which is 
used to identify entities (including the option to define aliases).


## Importing and exporting schemata

Schemata can be read and written via the REST API or via the command 
line. Imports via the command line are based on YAML files, which can
contain a schema specification like this (the corresponding JSON 
syntax for the REST API is left as an exercise):

{% highlight yaml %}
name: 'person'
label: 'A person'
obj: 'entity'
hidden: no
attributes:
  - name: 'first_name'
    label: 'First name'
  - name: 'last_name'
    label: 'Last name'
  - name: 'title'
    label: 'Title'
    hidden: yes
{% endhighlight %}

The above schema will apply to entities (``obj: entity``) and it defines
three attributes, one of which will not be shown in listings by default
(``hidden: yes``).

Similarly, a relation could be defined like this:

{% highlight yaml %}
name: 'gift'
label: 'A present'
label_in: 'Gifts received'
label_out: 'Gifts given'
obj: 'relation'
attributes:
  - name: 'description'
    label: 'Description'
  - name: 'value'
    label: 'Value (in EUR)'
{% endhighlight %}

Note that, since ``grano`` stores a directed graph, it is sometimes 
desirable for listings of relations to be headed by labels which reflect
the fact that they have different semantics on both ends (``label_in``
and ``label_out``). 

## Command-line schema import

On the command line, each schema is expected to be stored in its own 
YAML file, which can be imported like this:

{% highlight bash %}
grano schema_import my-project my_schema.yaml
{% endhighlight %}

The reverse command, ``schema_export`` expects a directory name as its
sole argument. In the directory, one YAML file will be generated for 
each schema that is currently defined in ``grano``:

{% highlight bash %}
grano schema_export my-project my_schemata/
{% endhighlight %}

