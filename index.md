---
--- # categories
- general
site: github
layout: common
title: Index
---

Active Public Repositories
==========================

* [ruby-jlog - Ruby extensions for jlog](http://github.com/mbainter/ruby-jlog)


Recent Posts
============
{% for post in site.posts limit:5 %}
<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
{{ post.content }}
<em>Posted {{ post.date | date_to_long_string }}.</em>
{% endfor %}
