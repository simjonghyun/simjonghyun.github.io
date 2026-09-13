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
  <p class="research-highlights__intro">In my current research, we introduce a distribution-aware criterion—the <strong>dominance score</strong>—and study how to identify the arm that maximizes it under bandit feedback.</p>

  <div class="research-definition">
    <p class="research-definition__kicker">Why a new criterion?</p>
    <h3>From Best-Arm Identification to Dominant-Arm Identification</h3>
    <p>Classical best-arm identification selects the arm with the highest expected reward. However, the mean can hide important differences when reward distributions cross.</p>

    <div class="research-comparison">
      <article class="research-comparison__card">
        <p class="research-comparison__label">Classical criterion</p>
        <h4>Best arm</h4>
        <p class="research-comparison__formula">a<sub>mean</sub> = arg max<sub>a</sub> E[R<sub>a</sub>]</p>
        <p>Find the arm with the highest mean reward.</p>
      </article>

      <article class="research-comparison__card research-comparison__card--proposed">
        <p class="research-comparison__label">Distribution-aware criterion</p>
        <h4>Dominant arm</h4>
        <p class="research-comparison__formula">a<sup>*</sup> = arg max<sub>a</sub> D<sub>a</sub></p>
        <p>The dominance score compares an arm with the locally strongest reward distribution at each reward level.</p>
      </article>
    </div>

    <p class="research-definition__detail"><strong>Dominance score:</strong> D<sub>a</sub> = Σ<sub>k=1</sub><sup>K</sup> ∫<sub>G<sub>k</sub></sub> F<sub>k</sub>(r) dP<sub>a</sub>(r), where G<sub>k</sub> is the region in which arm k is locally dominant.</p>
    <p class="research-definition__takeaway"><strong>Key idea:</strong> The arm with the largest mean and the arm with the largest dominance score can be different.</p>
  </div>

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
