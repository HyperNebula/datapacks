execute as @e[type=#minecraft:arrows,distance=..2.5,tag=!deflected,tag=!deflect_failed] at @s run tag @s add newly_deflected
execute as @e[type=#minecraft:arrows,distance=..2.5,tag=!deflected,tag=!deflect_failed,tag=!newly_deflected] run tag @s add deflect_failed

execute as @e[tag=newly_deflected] store result entity @s Motion[0] double -0.001 run data get entity @s Motion[0] 1000
execute as @e[tag=newly_deflected] store result entity @s Motion[1] double -0.001 run data get entity @s Motion[1] 1000
execute as @e[tag=newly_deflected] store result entity @s Motion[2] double -0.001 run data get entity @s Motion[2] 1000

execute if entity @e[tag=newly_deflected] run playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1.5
execute if entity @e[tag=newly_deflected] run particle sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 3

execute as @e[tag=newly_deflected] run tag @s add deflected
execute as @e[tag=newly_deflected] run tag @s remove newly_deflected