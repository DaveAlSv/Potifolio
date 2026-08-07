#set page(margin: 1in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show math.equation: set text(weight: "regular")
#show heading: set block(above: 1.4em, below: 1em)

#let user_metadata = yaml("metadata.yaml")
#let github_link = "https://github.com/" + user_metadata.github_username
#let gitlab_link = "https://gitlab.com/" + user_metadata.gitlab_username
#let github_user = "@" + user_metadata.github_username
#let gitlab_user = "@" + user_metadata.gitlab_username

#set document(
  title: [Programador],
)

#align(center)[
  #title()
]

#v(2em)

Nome : #user_metadata.name\
Contato:
#pad(x: 1em, [
  - Email:  #user_metadata.email
  - Telefone: #user_metadata.telefone
  
  #{
    if (user_metadata.github_username != none){
      [- Github: #underline(offset: 0.2em)[#link(github_link)[#github_user]]]
    }
    if (user_metadata.gitlab_username != none){
      [- GitLab: #underline(offset: 0.2em)[#link(gitlab_link)[#gitlab_user]]]
    }
  }
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
