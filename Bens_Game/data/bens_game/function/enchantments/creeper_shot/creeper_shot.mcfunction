execute if score @s creeper_shot matches 1 run return fail

execute as @s run scoreboard players set @s creeper_shot 1

execute if entity @s[type=!creeper] run summon creeper

schedule function bens_game:enchantments/creeper_shot/creeper_cd 300