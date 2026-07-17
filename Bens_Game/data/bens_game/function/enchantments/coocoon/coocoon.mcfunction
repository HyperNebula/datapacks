
execute if score @s coocoon_cd matches 1.. run return fail


execute as @s run scoreboard players set @s coocoon_cd 1200
summon marker ~ ~ ~ {Tags:["coocoon"]}

execute as @s at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @e[type=marker, tag=coocoon] run fill ~ ~ ~-1 ~ ~1 ~1 obsidian replace air
execute at @e[type=marker, tag=coocoon] run fill ~-1 ~ ~ ~1 ~1 ~ obsidian replace air
execute at @e[type=marker, tag=coocoon] run fill ~ ~ ~ ~ ~2 ~ obsidian replace air
execute at @e[type=marker, tag=coocoon] run fill ~ ~ ~ ~ ~1 ~ air replace obsidian
effect give @s regeneration 5 3 true

schedule function bens_game:enchantments/coocoon/end 100