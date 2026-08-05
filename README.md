# Space Invaders (tema Jesus x Demônios)

Clone do clássico Space Invaders feito em Godot Engine, com uma releitura temática: o jogador controla "Jesus", que se move na horizontal e atira cruzes para cima contra fileiras de demônios ("djabo") que descem e avançam lateralmente. Os demônios revidam atirando bolas de fogo contra o jogador. De tempos em tempos surge uma ovelha bônus que atravessa a tela e vale mais pontos que um demônio. Ao ser atingido por uma bola de fogo, o jogo muda para a tela de Game Over, com um botão para reiniciar a partida.

## Mecânicas principais

- Movimento lateral do jogador com as setas/`ui_left`/`ui_right` e disparo com a barra de espaço (`shoot`), com um cooldown controlado por timer.
- Grade de demônios que se move em bloco, desce periodicamente e dispara fogo aleatoriamente contra o jogador.
- Ovelhas bônus que cruzam a tela em intervalos aleatórios.
- Contagem de pontos: 100 pontos por demônio eliminado, 500 por ovelha.
- Efeitos sonoros (tiro, explosão, invasor eliminado) e fonte no estilo Atari.

## Tecnologias

- Godot Engine 4.4 (GDScript)
- Sprites e efeitos sonoros próprios (pasta `Sprites/` e `sfx/`)

## Como rodar

1. Abrir a pasta do projeto no Godot Engine 4.4 (ou compatível).
2. Rodar a cena principal `cenas/main.tscn` (definida como cena inicial no `project.godot`).
