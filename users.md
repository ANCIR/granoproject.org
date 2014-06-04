---
layout: default
title: Where grano is used
menu_title: Portfolio
---

Grano is a toolkit for building custom influence mapping projects. Some of these include a bespoke user interface, suited to the types of entities and relations that are part of the project.

{% for user in site.data.users %}
<hr>
<div class="row">
    <div class="col-md-4">
        <h2>{{user.title}}</h2>
        <p class="caption">{{user.description}}</p>
    </div>
    <div class="col-md-8">
        <a href="{{user.image_url}}">
            <img src="{{user.image}}" class="img-responsive" alt="{{user.title}}">
        </a>
    </div>
</div>

{% endfor %}
