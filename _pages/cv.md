---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* B.B.A. in Finance & B.S. in Statistics, Chung-Ang University, expected Feb 2027

Research Experience
======
* Undergraduate Researcher, SIAI Lab, Chung-Ang University
  * Advised by Prof. Wonyoung Kim
  * Sequential decision-making and statistical inference under uncertainty

Skills
======
* Python, R
* Statistical inference, optimization, machine learning

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
