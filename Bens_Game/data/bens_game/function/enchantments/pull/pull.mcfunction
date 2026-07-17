
execute if score @s pull_cd matches 1.. run return fail

execute as @s run scoreboard players set @s pull_cd 100

tag @s add pull

particle dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 4 0 4 0.1 200 normal
execute at @s run playsound entity.wither.shoot ambient @a[distance=..20] ~ ~ ~ 1 1

execute as @a[distance=..12,tag=!pull] run launch @s setMotionY .5
execute as @a[distance=..12,tag=!pull] run launch @s toward @n[tag=pull] 2
tag @s remove pull