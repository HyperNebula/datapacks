execute as @a[scores={mlclick=1,type2=4}, gamemode=!creative] store success score @s gunclear run clear @s iron_nugget 1
execute as @a[scores={gunclear=1..}] at @s run scoreboard players set @a[scores={gunclear=1..}] gunammo 1

scoreboard players set @a[gamemode=creative] gunammo 1

execute at @a[scores={mlclick=1,type2=4,gunammo=1..}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["Rotate2","bullet"],Small:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b}]}
tp @e[tag=Rotate2] @a[scores={mlclick=1,type2=4,gunammo=1..},limit=1]
tag @e[tag=Rotate2] remove Rotate2
execute as @e[tag=bullet] at @s run tp @s ^ ^ ^1.6

scoreboard players set @a gunammo 0

execute as @e[tag=bullet] at @s if entity @e[distance=..1,type=!minecraft:player,type=!minecraft:armor_stand] run tag @s add blhit
execute at @e[tag=bullet,tag=blhit] run effect give @e[distance=..1,type=!minecraft:player,type=!minecraft:armor_stand,limit=1] minecraft:wither 1 3
execute at @e[tag=bullet,tag=blhit] run kill @e[tag=bullet,tag=blhit]

scoreboard players add @e[tag=bullet] glifetime 1
execute as @e[tag=bullet,scores={glifetime=16..}] run kill @s