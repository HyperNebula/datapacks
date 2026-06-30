fill -26 -22 25 -27 -19 29 air

title @a times 20 120 20
title @a title "You have 5 minutes! Enter!"

execute as @a run function bens_game:control_match/give_items
gamemode adventure @a
team join lobby @a

effect give @a minecraft:saturation infinite 0 true

schedule function bens_game:control_match/1min_warning 240s replace
schedule function bens_game:control_match/countdown_10 290s replace
schedule function bens_game:control_match/countdown_5 295s replace
schedule function bens_game:control_match/countdown_4 296s replace
schedule function bens_game:control_match/countdown_3 297s replace
schedule function bens_game:control_match/countdown_2 298s replace
schedule function bens_game:control_match/countdown_1 299s replace
schedule function bens_game:control_match/tp_players 300s replace
