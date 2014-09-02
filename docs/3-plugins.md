---
layout: default
title: Plugin Interfaces and Extensions
menu_title: Plugins
menu_parent: docs/index.md
permalink: docs/plugins/
---

grano can be extended through plugins, which are interfaces that will be called at certain points during the execution of the application. Plugins can be bundled into extensions, which are independent Python packages that extend the functionality of grano.

Typical uses for such modules include storing the graph in an alternate form (e.g. as raw files, in a full-text search index or in a graph database). For an overview of existing extensions, see [this listing](/extensions).


## Enabling plugins

Plugins need to be enabled individually in the configuration file through a setting called ``PLUGINS``. Be aware that one extension (e.g. the ElasticSearch support) may expose multiple plugins - all of which need to be enabled for the extension to work correctly:

{% highlight python %}
PLUGINS = ['ui', 'es_boot', 'es_entity_indexer', 'es_project_indexer']
{% endhighlight %}


## Exposing plugins

The plugin system is based on [stevedore](http://stevedore.readthedocs.org/en/latest/), a Python library. To develop a plugin, you must implement one of the interfaces described below and then expose that implementation via your Python package's ``setup.py`` file. In ``setup.py``, all plugins are added to the ``entry_points`` section like this:

{% highlight python %}
entry_points={
    'grano.startup': [
        'myplugin1 = mypackage.granoplugin:OnStartup'
    ],
    'grano.entity.change': [
        'myplugin2 = mypackage.granoplugin:EntityChange'
    ],
    'grano.relation.change': [
        'myplugin3 = mypackage.granoplugin:RelationChange'
    ],
    'grano.project.change': [
        'myplugin4 = mypackage.granoplugin:ProjectChange'
    ]
}
{% endhighlight %}

## Available plugin interfaces

Visit the [grano API documentation](http://grano.readthedocs.org/interfaces.html)for a detailed overview of the available classes and modules.

