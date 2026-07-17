execute if score @s ice_shot matches 1 run return fail

execute as @s run scoreboard players set @s ice_shot 1

summon marker ~ ~ ~ {Tags:["ice_block"]}
execute as @n[type=marker, tag=ice_block] run fill ~1 ~2 ~1 ~-1 ~ ~-1 ice replace air

schedule function bens_game:enchantments/ice_shot/end 200 append

schedule function bens_game:enchantments/ice_shot/ice_cd 300 append