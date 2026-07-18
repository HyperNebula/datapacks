fill -26 -22 25 -27 -19 29 air

title @a times 20 120 20
title @a title "You have 15 minutes! Enter!"

execute as @a run function bens_game:control_match/give_items
gamemode adventure @a
team join lobby @a

effect give @a minecraft:saturation infinite 0 true

schedule function bens_game:control_match/1min_warning 840s replace
schedule function bens_game:control_match/countdown_10 890s replace
schedule function bens_game:control_match/countdown_5 895s replace
schedule function bens_game:control_match/countdown_4 896s replace
schedule function bens_game:control_match/countdown_3 897s replace
schedule function bens_game:control_match/countdown_2 898s replace
schedule function bens_game:control_match/countdown_1 899s replace
schedule function bens_game:control_match/tp_players 900s replace
