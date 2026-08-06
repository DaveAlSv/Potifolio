#set page(margin: 1in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show math.equation: set text(weight: "regular")
#show heading: set block(above: 1.4em, below: 1em)

#set document(
  title: [Programador],
)

#align(center)[
  #title()
]

#v(2em)

Nome : Dave Alves Silvino \
Contato:
#pad(x: 1em, [
  - email: `davealvessilvino+work@gmail.com`
  - telefone: `(88) 99713-5145`
  - github: #underline(offset: 0.2em)[#link("https://github.com/DaveAlSv")[`@DaveAlSv`]]
])

#v(0.5em)

#line(length: 100%, stroke: maroon)
#v(0.5em)
#grid(
  columns: (1fr, 1fr, 1fr),
  [
    #align(center)[
      Linguagens
    ]
    #v(0.5em)
    + Dart, Rust, C
    + Typescript / Js , Python
    + Typst / Md, Html, CSS
    + SQl, NoSQL
  ],
  [
    #align(center)[
      Frameworks
    ]
    #v(0.5em)
    + NextJs, Flutter
    + Supabase, MongoDb
    + Docker
  ],
)
