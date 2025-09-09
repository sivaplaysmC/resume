#import "constants.typ":*

#let icon_and_contact(content) = {
  if content != none {
    grid(
      columns: 1,
      align: center+horizon,
      gutter: COMPANY_ICON_SPACING,

      content
    )
  }
}

#let make-icon-header(icon-tuples) = {
  // what we put between elements
  let icon-joiner = box(baseline: -0.15em, [#h(0.5em)#sym.divides#h(0.5em)])

  // map them into formatted content, and join
  icon-tuples.map(content => {
    box(
      icon_and_contact(content)
    )
  }).join(icon-joiner)
}

#let hrule(stroke: 1pt + black) = {
  block(
    above: HRULE_HEIGHT,
    below: 0em,
    breakable: false,
    line(length: 100%, stroke: stroke)
  )
}
