# language: pt
@tmdb @detalhes @basico
Funcionalidade: Detalhes de filme

Contexto:
Dado que busco por "Inception" na página inicial
E a lista de resultados é exibida

Cenário: Abrir a página de detalhes a partir do primeiro resultado
Quando acesso o primeiro resultado de filme
Então devo visualizar a página de detalhes contendo título, sinopse e poster
