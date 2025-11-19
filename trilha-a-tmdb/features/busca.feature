# language: pt
@tmdb @busca @basico
Funcionalidade: Busca de filmes

Contexto:
Dado que acesso a página inicial "https://www.themoviedb.org/"

Cenário: Buscar título existente retorna resultados
Quando pesquiso por "Inception" no campo de busca
Então deve aparecer ao menos 1 resultado de filme

Cenário: Buscar termo inexistente informa ausência de resultados
Quando pesquiso por "xyz123inexistente" no campo de busca
Então deve ser exibida uma indicação de nenhum resultado encontrado
