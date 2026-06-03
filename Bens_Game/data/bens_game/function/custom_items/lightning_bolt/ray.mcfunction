
particle copper_fire_flame ~ ~ ~ 0 0 0 0 1 normal

execute if entity @e[distance=..2,limit=1,sort=nearest,tag=!lightning_user] run scoreboard players add @e[distance=..2,limit=1,sort=nearest,tag=!lightning_user] lightning_charge 1
execute as @e[scores={lightning_charge=600..}] run function bens_game:custom_items/lightning_bolt/found_target

execute unless block ~ ~ ~ minecraft:air run return fail


scoreboard players remove @s lightning_bolt 1
execute if score @s lightning_bolt matches 1.. positioned ^ ^ ^0.5 run function bens_game:custom_items/lightning_bolt/ray
