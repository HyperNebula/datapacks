execute as @a[scores={mlclick=1,type2=1}, gamemode=!creative] store success score @s mlclear run clear @s gunpowder 1
execute as @a[scores={mlclear=1..}] at @s run scoreboard players set @a[scores={mlclear=1..}] mlammo 1

scoreboard players set @a[gamemode=creative] mlammo 1

execute at @a[scores={mlclick=1,type2=1,mlammo=1..}] as @a[scores={mlclick=1,type2=1,mlammo=1..}] run function testpack:grenades/launcher_summon
scoreboard players add @e[tag=toThrow,type=minecraft:armor_stand] alifetime 1
execute at @e[tag=toThrow,scores={alifetime=40}] run summon minecraft:creeper ~ ~ ~ {Fuse:0}
kill @e[tag=toThrow,scores={alifetime=40}]

scoreboard players set @a mlammo 0