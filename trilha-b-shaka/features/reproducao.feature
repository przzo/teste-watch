# language: pt
@shaka @reproducao @basico
Funcionalidade: Reprodução de vídeo

Contexto:
Dado que acesso a demo do Shaka Player "https://shaka-player-demo.appspot.com/"
E seleciono o conteúdo "Angel One (DASH)"

Cenário: Iniciar reprodução avança o tempo
Quando aciono o comando de Play
Então o tempo de reprodução deve avançar em pelo menos 1s dentro de 5s

Cenário: Pausar reprodução interrompe avanço do tempo
Quando aciono o comando de Pause
Então o tempo de reprodução não deve avançar por 2s consecutivos
