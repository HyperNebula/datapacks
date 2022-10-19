execute at @e[type=ocelot,name=ckill] at @e[type=minecraft:armor_stand,tag=ClDoor,distance=..1.5] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:air
execute at @e[type=ocelot,name=ckill] run kill @e[type=minecraft:armor_stand,tag=ClDoor,distance=..1.5]
execute at @e[type=ocelot,name=ckill] at @e[type=minecraft:armor_stand,tag=ClDoor2,distance=..1.5] run fill ~ ~ ~-1 ~ ~2 ~1 minecraft:air
execute at @e[type=ocelot,name=ckill] run kill @e[type=minecraft:armor_stand,tag=ClDoor2,distance=..1.5]
execute at @e[type=ocelot,name=ckill] run kill @e[type=minecraft:armor_stand,tag=zspawner,distance=..1]
kill @e[type=ocelot,name=ckill]