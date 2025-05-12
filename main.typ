#import "@local/umn-theme:0.0.0": *
#import "@preview/codly:1.3.0": *
#import "@preview/cheq:0.2.2": checklist

#show: codly-init

#show: checklist.with(
  stroke: umn-lightgray,
  fill: umn-maroon,
  radius: 0.2em
)

#show: umn-theme.with(
  config-info(
    title: [Customize Your Slide Title Here],
    subtitle: [Customize Your Slide Subtitle Here],
    author: [Tom Eichlersmith],
    date: datetime.today(),
    institution: [he/him/his \ University of Minnesota],
    logo: image("ldmx_logo.svg")
  )
)

#title-slide()

//#outline-slide()

= Section A

== Enumerated Lists
#slide[
=== Inside Header
- one
  - three
    - four
  - six
- two
- five
- #link("https://umn.edu")[umn.edu]
][
  #lorem(60)

  - [ ] one
  - [x] two
]
  
==

A slide without a title but with *important* information.

= Section B

== Alert Example

#slide[
#alert[#lorem(10)]
][
#tblock(title: [hello])[#lorem(20)]
]

== Just Text

#lorem(20)

=== Internal Heading

#lorem(80)

#focus-slide[
  Wake up!
]

== Multi-Column

#slide(composer: (1fr,1fr))[
  #block(fill: umn-sunny, width: 100%, height: 100%)[]
][
  - #lorem(20)
  - #lorem(20)
    - #lorem(5)
  - #lorem(10)
]

= Small Text

== Figure Example

#figure(
  image("ldmx_logo.svg"),
  caption: [
    This is the LDMX logo in UMN colors
  ]
)

== Footnote Example

- #lorem(10)#footnote[#lorem(5)]
- #lorem(10)

== Pause Example

We can use `#pause` to #pause display something later.

#pause

Just like this.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.

== Typst is Much Faster #emoji.fire #emoji.rocket

#slide[
It takes about 2.5s to compile the single-page slides that
I regularly use for this meeting.

```sh
eichl008@spa-cms016 ~/updates/umn> time make
...
real    0m2.556s
user    0m0.587s
sys     0m0.170s
```
][
While it only takes about 0.2s for Typst to compile
this multi-slide set.

```sh
watching main.typ
writing to main.pdf

[14:41:01] compiled successfully in 145.45 ms
```

This makes a `typst watch` command useful and very responsive.
]

== And Its More Powerful #emoji.arm.muscle

- [ ] This slide displays its own code (without some preamble stuff thats necessary)

#codly(range: (139,146))
#raw(read("main.typ"), lang: "typ", block: true)

- [x] Wowee!

== Usage

1. #link("https://github.com/typst/typst?tab=readme-ov-file#installation")[Install Typst]
```sh
# e.g. if you want to compile it natively
cargo install --locked typst-cli
```
2. Copy umn-theme.typ into your local area from #link("https://github.com/tomeichlersmith/typst-touying-umn-theme")[tomeichlersmith/typst-touying-umn-theme]
  - I am not publishing it on Typst's package registry because I am not willing to maintain it.
3. Typst will handle installing new packages from registries if you `#import` them.

#show: appendix

= Appendix

== Appendix

Please pay attention to the current slide number.
