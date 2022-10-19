execute at @e[type=minecraft:mooshroom,name=NSdoor] run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["ClDoor2"]}
kill @e[type=minecraft:mooshroom,name=NSdoor]
execute at @e[tag=ClDoor2] run fill ~ ~ ~-1 ~ ~2 ~1 minecraft:obsidian
execute at @a run tag @e[type=minecraft:armor_stand,tag=ClDoor2,distance=..2] add OpDoor2
execute at @a run tag @e[type=minecraft:armor_stand,tag=ClDoor2,distance=..2] remove ClDoor2
execute at @e[tag=OpDoor2] run fill ~ ~ ~-1 ~ ~2 ~1 minecraft:air
execute at @a run tag @e[type=minecraft:armor_stand,tag=OpDoor2,distance=2..] add ClDoor2
execute at @a run tag @e[type=minecraft:armor_stand,tag=OpDoor2,distance=2..] remove OpDoor2