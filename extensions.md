---
layout: default
title: Extensions and Plugins
menu_title: Extensions
---

Extensions to grano are either based on the grano API (using HTTP to communicate with the core application), or they use the [Python extension API](/docs/plugins) to hook into the system directly.

The following extensions are currently available:

<ul>
{% for ext in site.data.extensions %}
    <li><a href="https://github.com/{{ext.repo}}"><i class="fa fa-github-square"></i> <strong>{{ext.title}}</strong></a>: {{ext.description}} <em>({{ext.state}})</em></li>    
{% endfor %}
</ul>
