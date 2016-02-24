---
title: "CMPLXSYS530 Term Project Proposal: Inferring Drivers of Land-Cover and Neighborhood Change in a \"Rust Belt\" City with Probabilistic Networks"
author: "K. Arthur Endsley"
fontsize: 12pt
geometry: margin=1in
output:
  pdf_document:
    fig_caption: yes
    toc: true
---

Overall Goal
============

The overall goal of the proposed research is to determine whether satellite-derived observations of land-cover change are a good proxy for socio-economic change in residential neighborhoods.
Specifically, do drivers of change in neighborhood stability manifest physical changes in a neighborhood that are sensible as land-cover changes?
The study system is a "Rust Belt" urban ecosystem, the Detroit Metropolitan Statistical Area (MSA).
This area is an extreme case of a typical post-industrial urban declension: economic discrimination precipitates capital flight and ruinous disinvestment in the urban core (City of Detroit) which, in turn, drive the deterioration and abandonment of housing and commercial retail [@Thompson1999; @Sugrue2014].
The fortunes in this metropolitan area are heterogeneous, however, and the incorporated suburbs that prevent further growth or annexation by the City of Detroit are relatively prosperous [@McCarthy1997].

In Detroit, the considerable depopulation and loss of housing units through abandonment, foreclosure and demolition provide a unique opportunity to study how these social processes affect the landscape.
The disparate fortunes of municipalities throughout the Detroit MSA, including other shrinking cities like Pontiac and prosperous counterexamples like St. Clair Shores, suggests a spatial differentiation of landscape characteristics reflecting the underlying socio-economic heterogeneity.
As economic deprivation and high tax and service rates associated with a shrinking city stress residents' financial security and equity, foreclosures, strategic or otherwise, and abandonment will increase.
Without commercial reinvestment or population growth, these houses will remain empty and deteriorate quickly.
Demolition of derelict housing has been one of the primary tools used by the City in its attempt to stabilize neighborhoods [@VanAllsburg1973; @Wilgoren2002] and continues at a current pace of about 600 demolitions per month [@Detroit2016].

Do changes in neighborhood stability---changes in home values or foreclosure rates, in particular---exhibit a spatial pattern of land-cover changes?
As housing deteriorates in a temperate urban ecosystem, lawns, trees, and shrubs are often not maintained, leading to considerable overgrowth.
As housing is removed, neighborhoods begin to return to an undeveloped state which, at its extreme, resembles what has been called the "urban prairie" [@Gallagher2010].
Thus, the process of neighborhood destabilization should be expected to give rise to increasing vegetation cover over time [@Hoalst-Pullen2011].
However, stable neighborhoods that retain single-family homes may also increase in vegetation cover and intensity over time as trees and other long-lived plants mature and high levels of vegetation density are typically associated with measures of socio-economic advantage.
Can we resolve this apparent contradiction in the socio-economic signaling of vegetation through a finely resolved, time-lagged study of vegetation change?

Fine time-series data on neighborhood change are hard to obtain but real-estate transaction data indicate changes in neighborhood home values and the foreclosure rate over time.
Insofar as changes in home values and foreclosures signal an upward-transitioning or downward-transitioning neighborhood, we would like to functionally relate these changes to observed land-cover changes in a neighborhood.
The proposed modeling effort will attempt to answer the following questions:

1. Can we distinguish between declining and stable neighborhoods in a Rust Belt urban ecosystem by their different land-cover-change trajectories?
2. Is there a driving relationship between declining home values or rising foreclosures and increasing vegetation cover, consistent with our theory of Rust Belt neighborhood decline?
3. Is there a driving relationship between time-lagged neighborhood change indicators and land-cover change?
4. How well do changes in home values and foreclosure rates explain land-cover change trajectories at the neighborhood level when controlling for meteorological effects, urban morphology, and socio-economic and demographic baselines?

A probabilistic Bayesian network (BN) will be used to learn the causal structure of panel data covering neighborhood-level observations of land-cover change and socio-economic change.
I will examine the conditional probability tables in the BN to evaluate questions about drivers and the strengths of driving relationships.
Then, I will use the BN to simulate spatial, temporal, and statistical distributions under different assumptions and compare averages to observed distributions.

Justification
=============

In the U.S., both impervious surface and urban vegetation cover are associated with higher incomes [@Alig1987] and a better quality of life [@Lo1997].
However, these associations have been inconsistent [@Mennis2006].
For example, in different contexts increases in urban vegetation cover could signal suburbanization, neighborhood decline, housing abandonment, or re-vegetation of previously developed and industrial areas [@Hoalst-Pullen2011].
While static levels of vegetation cover are positively correlated with socio-economic advantage [e.g., @Lo1997; @Heynen2006a], positive rates of vegetation growth have been associated with neighborhood decline [e.g., @Emmanuel1997; @Ryznar2001].
Scholars have yet to simultaneously account for and distinguish between these apparently contradictory cases.
I contend that this knowledge gap persists, in part, because existing studies of coupled land-cover and socio-economic changes are not fully dynamic; they are merely cross-sectional models or two-date change vector analyses.
These static or linear-change models are also insufficient to capture the cyclic dynamics characteristic of neighborhood change [@Hoalst-Pullen2011]---the so-called "boom-and-bust" cycles of urban change.

Without "truly dynamic," [@Sampson2002] longitudinal studies on neighborhood change, as well as fine temporal data on neighborhood composition, we cannot understand how neighborhood processes evolve over time [@Mesev2011].
Studies of neighborhood change to date have been hampered by a lack of fine, time-series data on neighborhood change.
Many are forced to rely on the U.S. Census, conducted only once every 10 years, leading to the likely inaccurate assumption of linear change between Census years.
Satellite-derived observations of land cover---including three decades (1984-2016) of observations from Landsat Thematic Mapper and Enhanced Thematic Mapper Plus (TM and ETM+)---are available more frequently and at significantly lower cost than survey-based observations such as the decadal U.S. Census.

The proposed modeling effort is key to developing a satellite-based assessment of neighborhood stability through a land-cover change proxy.
This could be invaluable for future studies of neighborhood change.
Furthermore, a non-linear, probabilistic network that accurately captures temporally explicit drivers of land-cover change could resolve the knowledge gap as to the role of vegetation in residential socio-ecological processes.

Background
==========

The global population is urbanizing as once distal populations migrate to their respective nation's central cities, now the centers of emerging economic opportunities.
City dwellers have grown from 10% of the global population in 1900 to over 50% today [@Grimm2008] and are expected to exceed 60% (4.9 billion people) by 2030.
All of the growth in the global population over the next 15 years will be among lower- to middle-income groups living in cities [@Alberti2009; @Romero-Lankao2014], many of them in less industrialized nations.
At the same time, many industrial cities in the northern hemisphere are experiencing declining populations as their economies transition [@Ryznar2001; @Hoalst-Pullen2011].
The growth and decline of cities in response to regional economic change, the reorganization of markets, and the migration of human populations alters the spatial arrangement and trajectory of urban ecosystems [@Lambin2001; @Seto2003; @Wilson2014] with significant and often negative implications for social equity and ecosystem function [@Heynen2006a].
Detroit is an extreme case but also part of a broader trend in "shrinking" U.S. postindustrial cities, particularly since the 2008-2009 "Great Recession" [@Wilson1994; @Nelson1998; @Schilling2008; @Wilson2014].
In these cities, some neighborhoods may be stable or growing, retaining their housing stock and maintaining or increasing home values, while others may be in decline, losing homeowners and even housing units

Related Work
------------

Recent studies of vegetation-related neighborhood changes have specifically examined neighborhood decline and recovery since the 2008-2009 "Great Recession."
Wilson and Brown [-@Wilson2014] demonstrated that this economic event affected spatially differentiated rates of impervious-surface change in the Detroit MSA in a way that reduced "observed differences in the rates of change across communities with different socioeconomic compositions" (p. 331).
Both Deng and Ma [-@Deng2015] and Minn et al. [-@Minn2015] investigated the relationship between parcel land management and foreclosure rate in two very different climates.
Importantly, these two recent studies disagree as to the effectiveness of Landsat TM/ETM+ data in resolving land change at the parcel scale and as to the association between lawn management change and foreclosure events.

Probabilistic Bayesian networks (BNs) have limited tenure in land change science, however the broader class of network learning models, including artificial neural networks, are not uncommon in such studies.
BNs are a relatively recent [@Pearl1985] tool for estimating probabilities of occurrence given sparse observations.
Kocabas and Dragicevic [-@Kocabas2007] authored a study very relevant to the current proposal.
They combined a Bayesian network with an influence diagram, which allows them to drive a model of land-use change decisions based on both the probability of a certain land-use transition and its expected utility.
Bayesian networks have also been combined with agent-based models in a so-called "Bayesian network-based agent system" or BNAS [@Kocabas2013] and with decision trees [@Janssens2006], both for the purpose of modeling decision making.

Technical Approach
==================

<!--The modeling approach in this study involves the use of Bayesian networks, which are also known variously as belief networks, Bayesian belief networks, Bayes nets, and causal probabilistic networks [@Uusitalo2007].
Bayesian networks (BNs) are directed, acyclic graphs [@Nagarajan2013].
As each node in the graph is a variable, connections imply a conditional dependence between them.
The network is an acyclic, directed graph, implying a direction of dependence and that the links between variables (nodes) cannot form cycles.
BNs must also exhibit the Markov property; that is, the conditional probability of any node must depend only on its immediate parents [@Charniak1991; @Nagarajan2013].
To facilitate calculating the joint probability distribution, which is either a multinomial distribution in the case of discrete-valued variables or a Gaussian distribution in the case of continuous values, continuous and discrete variables usually cannot occur together in the same network [@Uusitalo2007; @Nagarajan2013].
Because the nodes of a Bayesian network are linked, multivariate regression is performed to predict the distribution arising at each node in the network, providing regression coefficients for each pairwise interaction between a node and its connections [@Nagarajan2013].

Training a Bayesian network generally consists of two steps: learning the network structure and then fitting the parameters.
In some studies, the network structure may be known or specified by an expert. The conditional probability tables (CPTs) for some or all of the variables might also be specified by an expert [@Kocabas2007].
In this study, there was not sufficient domain knowledge on hand to estimate the CPTs but an "expert" network structure was specified and compared to learned graphs.
Structure learning is computationally intensive but a variety of user-friendly algorithms are available that are tractable on consumer-grade hardware.
Parameter learning is generally done through a maximum likelihood approach (whereby the best fit parameters are estimated) or a Bayesian approach (whereby the posterior distribution of the parameters for a discrete distribution is estimated).
The Bayesian approach is preferred as it provides more robust estimates and guarantees the conditional probability tables will be complete [@Nagarajan2013].-->

Model Extensions and Measures of Interest
-----------------------------------------



Outline of Approach
-------------------

1. Spatially join all variables together.
2. Learn the structure of the Bayesian network with different algorithms.
3. Compare the learned structures and specify an expert model based both on their structure and expert knowledge.
4. Prepare a $k$-fold cross validation (CV) with $k=5$ for the entire dataset and for each of the later two time periods, separately.
5. Train and test the Bayesian network with each fold of CV for the combined dataset (Model 1) and each of the later two time periods (Models 2 and 3).
6. Examine the conditional probability tables (CPTs) in light of research questions.

References
==========
