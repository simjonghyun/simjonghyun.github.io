---
layout: single
title: "CV"
permalink: /cv/
author_profile: false
redirect_from:
  - /resume
---

{% assign cv_path = '/documents/cv.pdf' %}

<div class="cv-pdf">
  <div class="cv-pdf__toolbar" aria-label="CV actions">
    <a class="btn btn--primary" href="{{ cv_path | relative_url }}" download>
      <i class="fas fa-download" aria-hidden="true"></i>
      Download CV (.pdf)
    </a>
    <a class="btn btn--inverse" href="{{ cv_path | relative_url }}" target="_blank" rel="noopener">
      Open PDF
    </a>
  </div>

  <iframe
    class="cv-pdf__viewer"
    src="{{ cv_path | relative_url }}#view=FitH"
    title="Jonghyun Sim CV"
  ></iframe>

  <p class="cv-pdf__fallback">
    If the PDF viewer does not load, <a href="{{ cv_path | relative_url }}">open the CV directly</a>.
  </p>
</div>
