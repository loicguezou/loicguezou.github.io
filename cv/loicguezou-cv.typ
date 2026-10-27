// CV of Loïc Guezou. Build with:
//   quarto typst compile cv/loicguezou-cv.typ resources/loicguezou-cv.pdf
// The GitHub Actions workflow runs this before publishing the site.

#let accent = rgb("#6b8f71")

#set document(title: "Loïc Guezou – CV", author: "Loïc Guezou")
#set page(
  paper: "a4",
  margin: (x: 1.6cm, y: 1.6cm),
  footer: context align(center, text(size: 9pt)[
    Loïc Guezou – CV – #counter(page).display() of #counter(page).final().first()
  ]),
)
#set text(font: "Libertinus Serif", size: 10pt, lang: "en")
#set par(justify: true, leading: 0.55em)
#show link: underline

// Section heading: small caps in the accent colour, with a rule underneath.
#show heading.where(level: 1): it => block(above: 1.1em, below: 0.6em, width: 100%)[
  #text(fill: accent, weight: "bold", size: 10.5pt, smallcaps(it.body))
  #v(-0.75em)
  #line(length: 100%, stroke: 0.7pt)
]

// One CV entry: title and place on the first line, organisation and dates on
// the second, optional description below.
#let entry(title, org, place: none, dates: none, body) = block(below: 0.85em, breakable: false)[
  #grid(
    columns: (1fr, auto),
    row-gutter: 0.35em,
    strong(title), align(right, if place != none { place }),
    org, align(right, if dates != none { dates }),
  )
  #if body != [] { v(0.1em); body }
]

// A degree: the degree type in the accent colour, then the field.
#let degree(kind, field, school, dates) = block(below: 0.75em)[
  #grid(
    columns: (1fr, auto),
    row-gutter: 0.35em,
    [#text(fill: accent, weight: "bold", kind) #strong(field)], [],
    school, align(right, dates),
  )
]

#align(center)[
  #text(size: 17pt, fill: accent, weight: "bold", smallcaps[Loïc Guezou])
  #v(0.1em)
  #link("mailto:lo.guezou@gmail.com")[lo.guezou\@gmail.com] |
  #link("mailto:loic.guezou@hereon.de")[loic.guezou\@hereon.de] |
  #link("mailto:loic.guezou@tuhh.de")[loic.guezou\@tuhh.de] \
  #link("https://loicguezou.github.io")[website] |
  #link("https://scholar.google.com/citations?user=SVK3uLkAAAAJ")[Google Scholar] |
  #link("https://orcid.org/0009-0006-0965-3480")[ORCID] |
  #link("https://www.linkedin.com/in/loicguezou")[LinkedIn]
]

= Current position

*Postdoctoral researcher*, Institute of Material Systems Modeling, Helmholtz-Zentrum Hereon, Hamburg area, Germany \
*Since*: October 2026

= Research interests

Scientific Machine Learning; Model Order Reduction; Constitutive Modelling; Biomechanics; Non-linear Materials

= Education

#degree[Ph.D.][in Computational Mechanics][Université Paris-Saclay][2022 – 2026]
#block(below: 0.9em, inset: (left: 1em))[
  *Thesis*: _Development of Hyperelastic Reduced-Order Models For Biomimetic Material Applications Using Proper Generalised Decomposition_ \
  *Defended*: 16 July 2026. *Supervisors*: B. Tie, A. Barbarulo \
  *Jury*: A. Bel-Brunon (president), P. Díez, U. Nackenhorst (reviewers), A. Daby-Seesaram
]
#degree[M.Sc.][in Computational Mechanics][Université Paris-Saclay][2021 – 2022]
#degree[M.Sc.][in Mechanical Engineering][ISAE-Supméca][2019 – 2022]
#degree[CPGE][(preparatory cycle to the top Engineering schools entrance exams)][Lycée Condorcet, Paris][2017 – 2019]

= Experience

#entry(
  [Postdoctoral researcher],
  [Institute of Material Systems Modeling, Helmholtz-Zentrum Hereon],
  place: [Hamburg area, Germany],
  dates: [October 2026 – present],
)[]

#entry(
  [Ph.D. student in Computational Mechanics],
  [Laboratoire de Mécanique Paris-Saclay],
  place: [Gif-sur-Yvette, France],
  dates: [October 2022 – July 2026],
)[Skills developed: Model order reduction (PGD), Hyperelasticity theory, Python, Finite Element Method, Numerical methods, Biomimetic Engineering, Scientific writing]

#entry(
  [Teaching],
  [CentraleSupélec],
  place: [Gif-sur-Yvette, France],
  dates: [2023 – 2025 (24h)],
)[Teaching assistant for Computational Structural Dynamics. Master 2 students. 2 years in a row.]

#entry(
  [Teaching],
  [CentraleSupélec],
  place: [Gif-sur-Yvette, France],
  dates: [2022 – 2024 (40h)],
)[Project supervision on Mechanical Engineering for 3D printing. Master 1 Engineering students. 2 years in a row.]

#entry(
  [Research intern in Computational Mechanics],
  [Laboratoire de Mécanique Paris-Saclay],
  place: [Gif-sur-Yvette, France],
  dates: [April 2022 – September 2022],
)[Master research internship. Developing a PGD dual formulation (pressure-velocity) for acoustic dynamic computations. Supervision: B. Tie, A. Barbarulo]

#entry(
  [Engineer assistant intern in Research & Development],
  [NUVIA Protection],
  place: [Morestel, France],
  dates: [September 2020 – January 2021],
)[Quantification of the head loss in fire protection devices for the nuclear sector.]

#entry(
  [Student intern],
  [Laboratoire de Physique de l'Ecole Normale Supérieure],
  place: [Paris, France],
  dates: [January 2020],
)[]

= Publications

+ Loïc Guezou, Andrea Barbarulo, Bing Tie. A new PGD parametric modelling strategy for hyperelastic materials. _In preparation_.
+ Loïc Guezou. Development of Hyperelastic Reduced-Order Models For Biomimetic Material Applications Using Proper Generalised Decomposition. _PhD thesis, Université Paris-Saclay_, 2026; #link("https://theses.fr/2026UPAST085")[theses.fr].
+ Loïc Guezou, Andrea Barbarulo, Bing Tie. Development of high-fidelity numerical models for 3D printing of patient-specific anatomy. _ECCOMAS Congress 2024 - The 9th European Congress on Computational Methods in Applied Sciences and Engineering_, Lisbon, Portugal; #link("https://hal.science/hal-04532173")[Abstract].
+ Loïc Guezou, Andrea Barbarulo, Bing Tie. Development of high-fidelity numerical models for 3D printing of patient-specific anatomy. _16ème Colloque National en Calcul de Structures (CSMA 2024)_, Hyères, France; #link("https://hal.science/hal-04490216")[Abstract].

= Talks

#set enum(spacing: 0.6em)
+ Loïc Guezou. PhD defence. _Université Paris-Saclay_, 2026 July 16; Gif-sur-Yvette, France.
+ Loïc Guezou, Andrea Barbarulo, Bing Tie. Poster presentation. _7th International Workshop on Model Order Reduction Techniques_, 2025 November 26; Zaragoza, Spain; #link("https://loicguezou.github.io/resources/presentations/mortech2025/mortech2025-guezou.pdf")[Poster].
+ Loïc Guezou, Andrea Barbarulo, Bing Tie. Presentation. _9th European Congress on Computational Methods in Applied Sciences and Engineering_, 2024 June 07; Lisbon, Portugal; #link("https://loicguezou.github.io/resources/presentations/eccomas2024/eccomas2024-guezou.pdf")[Talk].
+ Loïc Guezou, Andrea Barbarulo, Bing Tie. Poster presentation. _16th Congress of the Computational Structural Mechanics Association_, 2024 May 14; Giens, France; #link("https://loicguezou.github.io/resources/presentations/csma2024/csma2024-guezou.pdf")[Poster].

= Skills

*Languages:* French (native) | English (fluent, TOEIC 980/990) | German (A1, learning) | Spanish (intermediate) | Italian (intermediate) \
*Programming tools:* Python | C++ | MatLab \
*Methods:* Finite Element Method | Model Order Reduction | Neural Networks \
*Scientific Software:* CATIA | SolidWorks \
*OS:* macOS | Linux | Windows \
*Other software:* LaTeX | Typst | Inkscape | Microsoft Office

= Service

#grid(
  columns: (1fr, auto),
  [ED SMEMaG, Elected representative of the PhD students in the doctoral school council], [2022–2024],
)
