fill -26 -22 25 -27 -19 29 air

title @a times 20 120 20
title @a title "You have 10 minutes! Enter!"

execute as @a run function bens_game:control_match/give_items
gamemode adventure @a
team join lobby @a

effect give @a minecraft:saturation infinite 0 true

schedule function bens_game:control_match/1min_warning 540s replace
schedule function bens_game:control_match/countdown_10 590s replace
schedule function bens_game:control_match/countdown_5 595s replace
schedule function bens_game:control_match/countdown_4 596s replace
schedule function bens_game:control_match/countdown_3 597s replace
schedule function bens_game:control_match/countdown_2 598s replace
schedule function bens_game:control_match/countdown_1 599s replace
schedule function bens_game:control_match/tp_players 600s replace
