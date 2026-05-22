


execute as @e[name=blackjack] run tag @p add blackjack_player
execute as @e[name=blackjack] run tag @s add playing


scoreboard objectives add blackjack dummy "Blackjack Table"

scoreboard add #dealer_score blackjack 0
scoreboard add #player_score blackjack 0

#draw the first dealer card
run function bens_game:blackjack/draw_a_card

run function bens_game:blackjack/draw_a_card
run function bens_game:blackjack/draw_a_card