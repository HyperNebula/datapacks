execute if entity @e[distance=..0.75,limit=1,sort=nearest] run return run execute as @e[distance=..0.75,limit=1,sort=nearest] at @s run summon lightning_bolt ~ ~ ~

execute unless block ~ ~ ~ minecraft:air run return
execute unless block ~ ~ ~ minecraft:cave_air run return
execute unless block ~ ~ ~ minecraft:void_air run return

scoreboard players remove @s lightning_bolt 1
execute if score @s lightning_bolt matches 1.. positioned ^ ^ ^0.5 run function bens_game:custom_items/lightning_bolt/ray