execute as @a[scores={mlclick=1,type2=2}, gamemode=!creative] store success score @s mlclear run clear @s coal 1
execute as @a[scores={mlclear=1..}] at @s run scoreboard players set @a[scores={mlclear=1..}] mlammo 1

scoreboard players set @a[gamemode=creative] mlammo 1

execute at @a[scores={mlclick=1,type2=2,mlammo=1..}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["Rotate","missile"],NoGravity:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"d9dc3de0-66f8-4156-888c-ee63da497460",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19"}]}}}}]}
tp @e[tag=Rotate] @a[scores={mlclick=1,type2=2,mlammo=1..},limit=1]
tag @e[tag=Rotate] remove Rotate
execute as @e[tag=missile] at @s run tp @s ^ ^ ^0.9

scoreboard players set @a mlammo 0