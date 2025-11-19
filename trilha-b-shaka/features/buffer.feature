# language: pt
@shaka @buffer @basico
Funcionalidade: Buffer e estabilidade

Contexto:
Dado que estou reproduzindo o conteúdo "Angel One (DASH)" na demo do Shaka Player

Cenário: Rede lenta exibe estado de buffer
Quando aplico o perfil de rede "Slow 3G"
Então o player deve exibir o estado de buffer dentro de 10s

Cenário: Retomar reprodução após normalizar a rede
Quando restauro o perfil de rede para "Online"
Então a reprodução deve ser retomada automaticamente dentro de 5s
