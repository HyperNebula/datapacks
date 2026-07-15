execute if score @s ice_shot matches 1 run return fail

execute as @s run scoreboard players set @s ice_shot 1

fill ~1 ~2 ~1 ~-1 ~ ~-1 ice replace air

schedule function bens_game:enchantments/ice_shot/ice_cd 300