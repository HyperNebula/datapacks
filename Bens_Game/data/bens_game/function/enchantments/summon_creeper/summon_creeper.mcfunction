execute if score @s creeper_shot matches 1 run return fail

execute as @s run scoreboard players set @s creeper_shot 1

summon creeper

schedule function bens_game:enchantments/summon_creeper/creeper_cd 100