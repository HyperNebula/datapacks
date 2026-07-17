execute if score @s dash_cd matches 1.. run return fail


execute as @s run scoreboard players set @s dash_cd 60

execute at @s run particle large_smoke ~ ~.5 ~ 0 0 0 0.1 20 normal
execute at @s run playsound entity.breeze.deflect ambient @a[distance=..10] ~ ~ ~ 1 1
launch @s looking 2