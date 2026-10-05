---
layout: single
title: "Best-Arm Identification with High-Dimensional Covariates"
permalink: /research/best-arm-high-dimensional-covariates/
author_profile: true
---

<article class="research-detail">
  <figure class="research-detail__figure">
    <a href="{{ '/images/research/projected-sampling-ab-clean.svg' | relative_url }}" target="_blank" rel="noopener">
      <img src="{{ '/images/research/projected-sampling-ab-clean.svg' | relative_url }}" alt="Projected sampling probabilities and equal-budget parameter RMSE comparison for a high-dimensional bandit instance">
    </a>
    <figcaption>Projected sampling probabilities and parameter estimation error under the same observation budget.</figcaption>
  </figure>

  <ul class="research-detail__points">
    <li>Developed an unbiased estimator using left singular vectors and an L1-norm-based randomized sampling mechanism to reconstruct high-dimensional signals from a single coordinate observation per decision step.</li>
    <li>Proved unbiasedness and covariance preservation and extended spectral analysis to feature selection using high-order perturbation analysis and the Sherman-Morrison formula.</li>
    <li>Implemented numerical experiments on SVD-constructed instances, confirming that empirical convergence rates align with the theoretical sample complexity and regret guarantees.</li>
  </ul>
</article>
