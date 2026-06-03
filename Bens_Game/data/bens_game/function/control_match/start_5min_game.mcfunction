fill -26 -22 25 -27 -19 29 air

title @a title "You have 5 minutes! Enter!"

execute as @a run function bens_game:control_match/give_items
team join lobby @a

schedule function bens_game:control_math/1min_warning 240s replace
schedule function bens_game:control_match/tp_players 300s replace
