---
permalink: /
title: "About"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

Hi, I'm an undergraduate student at [Chung-Ang University](https://www.cau.ac.kr/), double-majoring in Finance and Statistics. My research interests lie in sequential decision-making and statistical inference under uncertainty, drawing on adaptive stochastic optimization, distributional robustness, and high-dimensional statistics.

During my undergraduate years, I have been fortunate to work in the [SIAI Lab](https://www.siai.cau.ac.kr) at Chung-Ang University, advised by Prof. Wonyoung Kim. I am applying to PhD programs for Fall 2027 — please feel free to [reach out](mailto:simjonghyun@cau.ac.kr).

<section class="research-highlights" aria-labelledby="research-highlights-title">
  <h2 id="research-highlights-title">Research Highlights</h2>
  <p class="research-highlights__intro">My current research studies dominant-arm identification when treatment outcomes must be compared as full distributions rather than only by their averages.</p>

  <figure class="research-highlight">
    <img src="{{ '/images/research/biomedical-reward-cdf.png' | relative_url }}" alt="Cumulative distribution functions for four biomedical treatment-response arms, with locally dominant regions highlighted">
    <figcaption>
      <strong>Distribution-aware treatment comparison.</strong>
      The arm with the largest average response is not necessarily the arm with the strongest dominance score. The dashed curve shows how local dominance changes across the outcome distribution.
    </figcaption>
  </figure>

  <figure class="research-highlight">
    <img src="{{ '/images/research/biomedical-sample-complexity.png' | relative_url }}" alt="Box plots comparing the sample complexity of DRDSE and the average estimator across five confidence levels">
    <figcaption>
      <strong>More efficient identification.</strong>
      In biomedical treatment-response experiments, DRDSE reduced median sample complexity by 74.7–76.0% compared with the average-estimator baseline, while correctly identifying the best dominance-score arm in all 500 runs at every confidence level.
    </figcaption>
  </figure>
</section>
