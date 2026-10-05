---
layout: single
title: "Dominant Arm Identification with Mixing and Recycling Observed Samples"
permalink: /research/dominant-arm-identification/
author_profile: true
---

<article class="research-detail">
  <figure class="research-detail__figure">
    <a href="{{ '/images/research/biomedical-sample-complexity.png' | relative_url }}" target="_blank" rel="noopener">
      <img src="{{ '/images/research/biomedical-sample-complexity.png' | relative_url }}" alt="Boxplots comparing the sample complexity of DRDSE and an average-reward baseline across confidence levels">
    </a>
    <figcaption>Sample-complexity comparison in the biomedical treatment-response setting.</figcaption>
  </figure>

  <ul class="research-detail__points">
    <li>Proposed a novel dominance score criterion based on local distributional dominance, capturing crossing CDFs, tail behavior, and heterogeneous reward profiles that may be overlooked by mean-based comparisons.</li>
    <li>Developed a doubly robust estimator with a joint mixing-and-recycling mechanism that guarantees simultaneous convergence of the empirical distribution functions for all arms.</li>
    <li>Proposed the Doubly Robust Dominance Score Elimination (DRDSE) algorithm, which correctly identifies the best dominance score arm with a sample complexity upper bound that matches the lower bound up to logarithmic factors.</li>
  </ul>

  <p class="research-detail__links">
    <a class="btn btn--primary" href="{{ '/publication/2026-dai' | relative_url }}">View Presentation</a>
  </p>
</article>
