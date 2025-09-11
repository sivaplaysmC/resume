#let project(title, link: "", lang: none, tech: (), body) = {
  block(
    below: 15pt,
    above: 5pt,
    breakable: false,

    grid(
      columns: (auto, 1fr, auto),
      row-gutter: 0.5em,
      align: (left + horizon, left+horizon, right + horizon),

      // first column: project title
      pad(
        bottom: 1pt,
        text(
          weight: "bold",
          size: 11pt,
          title
        )
      ),

      // TODO: The dots are not appearing properly. Should fix this later.
      // second column: dots
      if lang != none { repeat(h(0.1em) + "." + h(0.1em)) } else { [] },
      // [],

      // third column: main technology
      text(
        weight: "bold",
        size: 11pt,
        if lang != none { lang } else { [] }
      ),

      // second row: link to project (inline)
      grid.cell(
        colspan: 2,
        text(
          size: 10pt,
          weight: "semibold",
          link,
        )
      ),

      // second row: project techstack
      grid.cell(
        colspan: 1,
        text(
          size: 10pt,
          weight: "semibold",
          tech.join(" | "),
        )
      ),

      // third row: description body
      grid.cell(colspan: 3, body)
    )
  )
}


#let achievement(title, position: none, category: none, date: none) = {
  block(
    below: 12pt,
    above: 5pt,
    breakable: false,

    grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: (0.5em, 0.5em),
      row-gutter: 0.4em,
      align: (left + horizon, horizon, right + horizon),

      // first column: achievement title
      text(
        weight: "bold",
        size: 11pt,
        title
      ),

      // second column: category
      align(center)[
        #text(
          weight: "semibold",
          size: 11pt,
          category
        )
      ],

      // third column: position
      text(
        weight: "bold",
        size: 11pt,
        if position != none { position } else { [] }
      ),
    )
  )
}

#let education(degree: "", institution: "", from: "", to: "", grade: "") = {
  block(
    below: 12pt,
    above: 5pt,
    breakable: false,

    grid(
      columns: (auto, 1fr, auto),
      column-gutter: (0.5em, 0.5em),
      row-gutter: 0.4em,
      align: (left + horizon, right + horizon, right + horizon),

      // first column: degree
      text(
        weight: "bold",
        size: 11pt,
        degree
      ),

      [],

      // second column: duration (from-to)
      text(
        weight: "semibold",
        size: 11pt,
        from + " - " + to
      ),



      // second column: institution name
      text(
        weight: "regular",
        size: 11pt,
        institution
      ),

      [],

      // fourth column: grade
      text(
        weight: "regular",
        size: 11pt,
        grade
      )
    )
  )
}
