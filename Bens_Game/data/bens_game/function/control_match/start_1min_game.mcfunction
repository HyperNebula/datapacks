fill -26 -22 25 -27 -19 29 air

title @a title "You have 1 minutes! Enter!"

execute as @a run function bens_game:control_match/give_items
gamemode adventure @a
team join lobby @a

effect give @a minecraft:saturation infinite 0 true

schedule function bens_game:control_match/tp_players 60s replace
