  # language: pt
  @tmdb @autenticacao @basico
  Funcionalidade: Autenticação

  Contexto:
  Dado que acesso a página de login "https://www.themoviedb.org/login"

  Cenário: Login válido autentica o usuário
  Quando faço login com as credenciais:
  | usuario | senha       |
  | qa_user | qa_password |
  Então devo visualizar o estado autenticado (ex.: avatar/menu da conta)

  Cenário: Login inválido apresenta mensagem de erro
  Quando faço login com as credenciais:
  | usuario       | senha        |
  | usuario_falso | senha_errada |
  Então devo visualizar uma mensagem de erro de autenticação
