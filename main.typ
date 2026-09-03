#set page(margin: 1in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show math.equation: set text(weight: "regular")
#show heading: set block(above: 1.4em, below: 1em)

// -- change ---
#let user_metadata = yaml("metadata.local.yaml")
// -- change ---

#let github_link = "https://github.com/" + user_metadata.github_username
#let gitlab_link = "https://gitlab.com/" + user_metadata.gitlab_username
#let credly_link = "https://www.credly.com/users/" + user_metadata.credly_username
#let linkedIn_link = "https://www.linkedin.com/in/" + user_metadata.linkedIn_username

#let github_user = "@" + user_metadata.github_username
#let gitlab_user = "@" + user_metadata.gitlab_username
#let credly_user = "@" + user_metadata.credly_username
#let linkedIn_user = "@" + user_metadata.linkedIn_username

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
  
  #{
    if (user_metadata.telefone != none){
      [- Telefone: #user_metadata.telefone]
    }
  }
])

#v(0.5em)
#line(length: 100%, stroke: maroon)
#v(0.5em)

#let showNl = false

#pad(x:1em, [
  #{
    
    if (user_metadata.github_username != none){
      [- Github: #underline(offset: 0.2em)[#link(github_link)[#github_user]]]
      showNl = true
    }
    if (user_metadata.gitlab_username != none){
      [- GitLab: #underline(offset: 0.2em)[#link(gitlab_link)[#gitlab_user]]]
      showNl = true
    }
    if (user_metadata.credly_username != none){
      [- Credly (certificados): #underline(offset: 0.2em)[#link(credly_link)[#credly_user]]]
      showNl = true
    }
    if (user_metadata.linkedIn_username != none){
      [- LinkedIn: #underline(offset: 0.2em)[#link(linkedIn_link)[#linkedIn_user]]]
      showNl = true
    }
    
  }
])

#if(showNl){
  v(0.5em)
  line(length: 100%, stroke: maroon)
  v(0.7em)
}

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
    + NextJs, Flutter, Tailwind
    + Supabase, MongoDb
    + Docker, LXD, GraphQl
  ],
  [
    #align(center)[
      Outras habilidades
    ]
    #v(0.5em)
    + SysAdmin, Network (redes)
    + Front-end, Back-end
    + Metemática, DevSecOps
  ]
)

#v(1.5em)
#grid(
  columns: (0.2em, auto),
  [#line(length: 5em, stroke: 0.2em + maroon, angle: 90deg)],
  [#align(alignment.horizon)[#pad(x: 2em)[#user_metadata.head_line]]]
)
#v(0.5em)

= Histórico
#{
  if (user_metadata.degrees != none){
    [
    == Graduação
      - #user_metadata.degrees.graduation.
    ]
  }
}
#{
  if (user_metadata.experience != none){
    let company_0 = user_metadata.experience.company_0
    [
      == #company_0.name (#text(size : 0.8em, fill: maroon)[#company_0.head_title])
      
      #company_0.head_line. Link para o #underline(offset: 0.2em)[#link("https://eshnitzchit.com/br/home/enterprise")[site]] #v(0.5em)
      - #company_0.descrition.at(0)
      - #company_0.descrition.at(1)
      - #company_0.descrition.at(2)
      - #company_0.descrition.at(3)
    ]
    
  }
}
 