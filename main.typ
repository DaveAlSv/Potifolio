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
    + NextJs, Flutter, Tailwind
    + Supabase, MongoDb
    + Docker, GraphQl
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

#v(0.5em)
#grid(
  columns: (0.2em, auto),
  [#line(length: 5em, stroke: 0.2em + maroon, angle: 90deg)],
  [#align(alignment.horizon)[#pad(x: 2em)[Compreendo que o objetivo do desenvolvimento de software está em transformar a vida de seus usuarios, portanto o conhecimento das partes mais fundamentais à infraestrutura se vee como necessaria para construir um aplicação segura e otimizada.]]]
)
#v(0.5em)

= Histórico
== Graduação
- Matriculado formalmente no curso de Matemática Computacionl - UFCA. Destaca-se as capacidade de resolver problemas, computacionais, complexos ao aplicar matemática avançada.
== Esh Nitzchit
Um startup fanstatica que traz segurança e qualidade ao desenvolvimento, link para o #underline(offset: 0.2em)[#link("https://eshnitzchit.com/br/home/enterprise")[site]]. Atuei no nucleo de formação assim como na sua construção aplicada. #v(0.5em)
- Desenvolvi o design da landing page e o seu devido condigo em tailwind e nextjs, sendo essa a base do projeto.
- Internacionalisei as paginas acarrtando maior publico alvo para a solução.
- Integrei a auteticação e database do supabase, na api escrita em typescript.
- Orquestrei records no dominio principal, trazendo o fluxo de dados para o mesmo, assim permitindo uma assinatura empresarial.
 