#import "@preview/bloated-neurips:0.5.1": botrule, midrule, neurips2024, paragraph, toprule, url
#import "/logo.typ": LaTeX, LaTeXe, TeX

#let affls = (
  airi: ("AIRI", "Moscow", "Russia"),
  skoltech: (
    department: "Department of Computer and Information Science",
    institution: "University of Pennsylvania",
    location: "PA", 
    country: "USA"),
  skoltech2: (
    department: "Department of Materials Science and Engineering",
    institution: "University of Pennsylvania",
    location: "PA", 
    country: "USA"),
)

#let authors = (
  // (name: "Star (Xinxin) Liu",
  //  affl: "University of Pennsylvania",
  //  email: "starliu@seas.upenn.edu",
  //  equal: true),
  (name: "Star (Xinxin) Liu, Stellaire X. Robinhood", affl: (
    // "airi", 
    "skoltech", "skoltech2"
  ), 
  equal: true),
)

#show: neurips2024.with(
  title: [AI4Science Research Proposal Template],
  authors: (authors, affls),
  keywords: ("Machine Learning", "NeurIPS"),
  abstract: [
    The abstract paragraph should focus on the main points: what keywords, what research field, what problem, how do we solve, use what fashion techniques, and reach what score. We should *highlight* our novelty and strong improvement, as well as the view which potentially aspires future works.
  ],
  bibliography: bibliography("RefTemplate.bib"),
  bibliography-opts: (title: none, full: true),  // Only for example paper.
  appendix: [
    #include "SupplementaryInformation.typ"
    // #include "checklist.typ"
  ],
  accepted: true,  // false for anonymous the authors
)






= Introduction

The summary of: 
- related works, the conflicts or gap between previous works,
- why are they so important,
- and what we contribute to them.

== The field/category of this work

== Latest fashion in this field

== Limitations of previous works in this field

#LaTeX style



== We solve what kind of gap/problems



== And how to solve

The detail of methods and strategies can be find at Sections~#ref(<scientific_problem>, supplement: auto), SI~#ref(<other_details>) below.


== (Optional) How our work can aspire/guide the design of wet-lab experiments


=  Related Work

== Encoder/Representation


== General Model Architecture

Actually, we can give 2 claims:
 - A full-size regular model which is for *SOTA performance*
 - A lightweight version of model for easy *setup/ reduce computational resource (or Runtime)*


== Problem from where and How did they find it


== Previous Tasks and Datasets


== Data-preprocessing techniques

What we do after Encoding? E.g.: any embedding techniques




= Background

Assuming the reviewer and editor are not specialist in our segment, we should give some explanation for the fundamentals. 

We cannot expect everybody understand every thing in our work, but at least, we have to persuade them by the smallest knowledge area that, our work is promising and fancy!!




= Framework of Methodology

== Find the science/engineering problems <scientific_problem>

And gives a general and original idea about how to solve it

== Model Architecture Design

#paragraph[Representation Learning: ] \
The key rule for designing a ReprL model is:
- Similar to traditional (CompSci) models
- Components are like, One-to-one correspondence: e.g. graphs' nodes &edges $->$ molecules' atoms &bonds

#paragraph[Statistical Learning: ] \
We should give *very rigorous* definitions for our datasets, sub-sets, sample, data-points, feature space, distributions, hierarchy, transformed space, assumptions, applicable conditions, ...etc., to give a very clear assertion.

#paragraph[Algorithm: ] \
Maybe we should introduce any recursive proof to clarify our algorithm/automata is context-free grammar (CFG) or optimal theoretically or something.


== Training Strategy

Common strategies:
- Hyper-parameter selection:
  - Grid Search
  - Random Search
  - Bayesian Opt (e.g. most easy one, by optuna)
    - How do we choose the returned criteria like what losses how weighted
    - How do we choose the initial guess
    - How to penalize the worse-performed trial
  - Modified BayesOpt
  - Gaussian Process
  - Simulating Annealing
- Optimizer selection:
  - Adam
  - SGD
  - Any modified Adam/SGD



== New Problems Solving

What we may meet when training or applying our new tools...





= Experimental Evaluation

General describe why we use such evaluations in both scientific and algorithmic views...

== Datasets and Tasks (Citations within the text)

In general, we should introduce *1-2* fashion tasks/benchmarks to prove our model/algorithm is _state-of-the-arts_ on current Evaluation Framework.

Then, we had better design a *new and exclusive* benchmark to illustrate this model/algorithm has more general application scenarios then ever before.

=== Previous Benchmark 1: 

For small molecule drug properties prediction benchmark, `ADMET TDC-2` may be found at

#align(center, block(spacing: 15pt, {url("https://tdcommons.ai/overview")}
))
#align(center)[
  #url("https://github.com/mims-harvard/TDC")
]
// here using two different url refs

Citation follows the format:
```tex
@article {Velez-Arce2024tdc,
	author = {Velez-Arce, Alejandro and Huang, Kexin and Li, Michelle and Lin, Xiang and Gao, Wenhao and Fu, Tianfan and Kellis, Manolis and Pentelute, Bradley L. and Zitnik, Marinka},
	title = {TDC-2: Multimodal Foundation for Therapeutic Science},
	elocation-id = {2024.06.12.598655},
	year = {2024},
	doi = {10.1101/2024.06.12.598655},
	publisher = {Cold Spring Harbor Laboratory},
	URL = {https://www.biorxiv.org/content/early/2024/06/21/2024.06.12.598655},
	journal = {bioRxiv}
}
```

=== Previous Benchmark 2:

For excample, SKEMPI v2.0:
#{
  show quote: set block(spacing: 15pt)
  quote(block: true)[Justina Jankauskaitė, et al.~(2019) investigated SKEMPI v2.0 ... ]
}
#v(7pt)  // In order to match original template.


=== Our Task and newly designed Benchmark

#box(height:20pt,columns(2,
gutter: 20pt)[
 #set par(justify: true)
 The main concern of xxx issue is xxx. And we find it is a general issue for these xxx models. So, we designed this xxx to show the potentials in xxx applications.
 ],
)

#paragraph[Table (and Figures) Styles]

#figure(
  caption: [Sample table title.],
  placement: auto,
  table(
    columns: 3,
    align: left + horizon,
    stroke: none,
    toprule,
    table.header(
      table.cell(colspan: 2, align: center)[Sample Info], [Size ($mu$m)],
      table.hline(start: 0, end: 2, stroke: (thickness: 0.05em)),
      [Name], [Description], [],
    ),
    midrule,
    [Dendrite], [Input terminal ], [$~100$],
    [Axon    ], [Output terminal], [$~10$],
    [Soma    ], [Cell body      ], [up to $10^6$],
    botrule,
  ),  // TODO(@daskol): Fix gutter between rows in body.
) <sample-table>

#figure(
  rect(width: 4.25cm, height: 4.25cm, stroke: 0.4pt),
  caption: [Sample figure caption.],
  placement: auto,
)


#pagebreak()
==  Ablation Study (Footnotes)

For our novelly modified part of the model structure /algorithm lines, we should give an ablation study #footnote[Namely, give the comparison w/o our modified structures/components] in the paragraph.
#v(5pt)  // In order to match original template.
Also, we can here give the reason that why we choose such strategy/sub-structure for the model. For example, we apply `GRU` rather than `LSTM` in _ChemXTree_ as the feature "amplifier", so that we gave the comparison in *Runtime* and *AUROC scores* on a subset of benchmark. #footnote[Acknoledgement: Thanks Dr. Yuzhi Xu #url{https://scholar.google.com/citations?user=jiUlHrUAAAAJ&hl} from NYU teaching me how to do research at my very starting point!!]



== Results We Expect

All artwork must be neat, clean, and legible. Lines should be dark enough for
purposes of reproduction. The figure number and caption always appear after the
figure. Place one line space before the figure caption and one line space after
the figure. The figure caption should be lower case (except for first word and
proper nouns); figures are numbered consecutively.

// In order to match original template.
#v(-9pt)

You may use color figures.  However, it is best for the figure captions and the
paper body to be legible if the paper is printed in either black/white or in
color.


== Plausible Extensions



== (Optional) Sampling for wet lab

We can choose several candidate samples to do some wet-lab experiments for verifying our effectiveness.

Specifically, we should focus on those who are:
- Of the best expected performance (e.g. the highest bonding energy $Delta Delta G_("bind")$), which are so called "the top candidates"
- point mutation
- Just the simplest random-sampling/stratified-sampling
- Easy to synthesize or be commonly-used






= Discussion

The short-comes (but not fatal ones) of the current version of work. However, it is not avoidable for now because of the limitations of current technology or cost budget or dataset systematic error or some other things.

== Noise
- Simply the dataset is too dirty (Especially those literature-extracted Materials Science datasets)
- Lack of model complexity / considered features in certain scenario
- Insufficient of training

== Any Trade-off or Dilemma




= Conclusion (Preparing PDF files)

Our Work is plausible and meaningful!!!




#pagebreak()
// We typset reference section header manualy in order to reproduce example
// paper. No special effort is required (a user should not override
// `bibliography-opts` as well).
#heading(numbering: none)[References]

