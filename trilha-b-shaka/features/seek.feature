# language: pt
@shaka @seek @basico
Funcionalidade: Navegação (seek)

Contexto:
Dado que estou reproduzindo o conteúdo "Angel One (DASH)" na demo do Shaka Player
E o tempo atual é registrado

Cenário: Realizar seek altera a posição de reprodução
Quando avanço a barra de progresso para +30 segundos
Então o tempo de reprodução deve refletir ~30s além do tempo registrado (tolerância ±2s)
