---
layout: default
title: Where grano is used
menu_title: Showcase
---

Grano is a toolkit for building custom influence mapping projects. Some of these include a bespoke example interface, suited to the types of entities and relations that are part of the project.

{% for example in site.data.examples %}
<hr>
<div class="row">
    <div class="col-md-4">
        <h2>{{example.title}}</h2>
        <p class="caption">{{example.description}}</p>
        <a href="{{example.url}}">
            <i class="fa fa-info-circle"></i> web site
        </a>
    </div>
    <div class="col-md-8">
        <a href="{{example.image_url}}">
            <img src="{{example.image}}" class="img-responsive" alt="{{example.title}}">
        </a>
    </div>
</div>
{% endfor %}
