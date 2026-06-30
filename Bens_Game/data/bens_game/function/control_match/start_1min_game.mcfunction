fill -26 -22 25 -27 -19 29 air

title @a times 20 120 20
title @a title "You have 1 minute! Enter!"

execute as @a run function bens_game:control_match/give_items
gamemode adventure @a
team join lobby @a

effect give @a minecraft:saturation infinite 0 true

schedule function bens_game:control_match/countdown_10 50s replace
schedule function bens_game:control_match/countdown_5 55s replace
schedule function bens_game:control_match/countdown_4 56s replace
schedule function bens_game:control_match/countdown_3 57s replace
schedule function bens_game:control_match/countdown_2 58s replace
schedule function bens_game:control_match/countdown_1 59s replace
schedule function bens_game:control_match/tp_players 60s replace
