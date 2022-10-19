execute at @a[scores={ftclick=1,type2=3},tag=!summoned] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["flamet"],NoGravity:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"f6dfc929-30da-45f4-b9d5-9ed06e28022f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA4MGJiZWZjYTg3ZGMwZjM2NTM2YjY1MDg0MjVjZmM0Yjk1YmE2ZThmNWU2YTQ2ZmY5ZTljYjQ4OGE5ZWQifX19"}]}}}}]}
tag @a[scores={ftclick=1,type2=3},tag=!summoned] add summoned
execute at @a[scores={ftclick=1,type2=3}] as @a[scores={ftclick=1,type2=3}] run tp @e[tag=flamet] ^ ^ ^6
execute at @a[scores={ftclick=2,type2=3}] run kill @e[tag=flamet,distance=..6.5]
tag @a[scores={ftclick=2,type2=3}] remove summoned
execute at @e[tag=flamet] run fill ~ ~1 ~ ~ ~2 ~ fire replace air
execute at @e[tag=flamet] at @e[type=!armor_stand,type=!player,distance=..1] run fill ~ ~-1 ~ ~ ~ ~ fire replace air

execute at @a[scores={type2=..2}] run kill @e[tag=flamet,distance=..6.5]
scoreboard players reset @a[scores={type2=..2}] ftclick
tag @a[scores={type2=..2}] remove summoned

#execute at @e[tag=flamet] store result score @a[scores={ftclick=1,type2=3}] ftfillt run fill ~ ~ ~ ~ ~1 ~ fire replace air
#execute as @a[scores={ftfillt=1}] at @s run scoreboard players set @a[scores={ftfillt=1}] ftfill 1
#execute at @e[type=minecraft:armor_stand,tag=flamet] if block ~ ~ ~ fire run scoreboard players set @a ftfill 0
#execute at @e[type=minecraft:armor_stand,tag=flamet] as @a[scores={ftfill=1}] store success score @s ftclear run clear @a[scores={ftfill=1}] minecraft:fire_charge 1
#execute as @a[scores={ftclear=1..}] at @s run scoreboard players set @a[scores={ftclear=1..}] ftammo 1
#execute as @a[scores={ftclear=0}] at @s run scoreboard players set @a[scores={ftclear=0}] ftammo 0
#execute as @a[scores={ftammo=0}] at @e[tag=flamet] run fill ~ ~0 ~ ~ ~1 ~ air replace fire

#scoreboard players set @a ftfill 0
#scoreboard players set @a ftammo 0
