
particle dust_color_transition{from_color:[0.000,0.031,1.000],to_color:[1.000,0.392,0.039],scale:1} ~ ~ ~ 0 0 0 0 1 normal


execute unless block ~ ~ ~ minecraft:air run function bens_game:custom_items/portal_gun/do_portal
execute unless block ~ ~ ~ minecraft:air run return fail

scoreboard players remove @s portal_range 1
execute if score @s portal_range matches 1.. positioned ^ ^ ^0.5 run function bens_game:custom_items/portal_gun/ray
