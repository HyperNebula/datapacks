execute at @e[type=minecraft:mooshroom,name=WEdoor] run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ClDoor"]}
kill @e[type=minecraft:mooshroom,name=WEdoor]
execute at @e[tag=ClDoor] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:obsidian
execute at @a run tag @e[type=minecraft:armor_stand,tag=ClDoor,distance=..2] add OpDoor
execute at @a run tag @e[type=minecraft:armor_stand,tag=ClDoor,distance=..2] remove ClDoor
execute at @e[tag=OpDoor] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:air
execute at @a run tag @e[type=minecraft:armor_stand,tag=OpDoor,distance=2..] add ClDoor
execute at @a run tag @e[type=minecraft:armor_stand,tag=OpDoor,distance=2..] remove OpDoor