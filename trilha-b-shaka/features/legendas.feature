# language: pt
@shaka @legendas @basico
Funcionalidade: Legendas

Contexto:
Dado que acesso a demo do Shaka Player "https://shaka-player-demo.appspot.com/"
E seleciono o conteúdo "Angel One (DASH)" com faixas de legenda

Cenário: Ativar legenda exibe texto
Quando ativo a faixa de legenda em "English"
Então deve ser exibido texto de legenda sobre o vídeo (mínimo de 1 linha visível após 5s)
