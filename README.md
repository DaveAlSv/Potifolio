# Inicio
Meu portifolio escrito em typst

## Sobre

Este é um repositorio que contem o meu prtifolio, no qual as informações do campo contatos estão omitidas. Se você gostou do template que quer reutiliza-lo, sinta-se livre para clonar o repositorio e adicionar suas modificações.

## Hands-on
Como o projeto foi escrito em typst, recomendo que baixe o compialdor ou utlize a versão [web](https://typst.app/play/)
em linux rode 'snap install typst'
> Para demais distribuições linux, que não utilizem snap, ou para outros sistemas operacionais veja a [pagina oficial do proejto](https://github.com/typst/typst#installation)

1. em 'main.typ', troque:
''' typst
#let user_metadata = yaml("metadata.local.yaml")
'''
por
''' typst
#let user_metadata = yaml("metadata.yaml")
'''

2. Compile o projeto com typst watch main.typ
3. Fassa a suas edições, e obtenha um maravilhoso pdf 
> O arquivo metada.yaml é um conjunto de variaveis que controlam as informações contidas no template, portanto recomendo que edite-o com intuito de adcionar as suas informações pessoais.

# Thanks
Que bom que você leu até aqui. Boa sorte !