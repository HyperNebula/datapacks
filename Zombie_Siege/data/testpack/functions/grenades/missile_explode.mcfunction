tag @e[type=minecraft:armor_stand,tag=missile] remove mlsafe1
tag @e[type=minecraft:armor_stand,tag=missile] remove mlsafe2
tag @e[type=minecraft:armor_stand,tag=missile] remove mlsafe3
tag @e[type=minecraft:armor_stand,tag=missile] remove mlsafe4
tag @e[type=minecraft:armor_stand,tag=missile] remove mlsafe5

execute as @e[tag=missile,type=minecraft:armor_stand] at @s if block ~ ~1.62 ~ minecraft:air run tag @s add mlsafe1
execute as @e[tag=missile,type=minecraft:armor_stand] at @s if block ~ ~1.62 ~-1 minecraft:air run tag @s add mlsafe2
execute as @e[tag=missile,type=minecraft:armor_stand] at @s if block ~ ~1.62 ~1 minecraft:air run tag @s add mlsafe3
execute as @e[tag=missile,type=minecraft:armor_stand] at @s if block ~-1 ~1.62 ~ minecraft:air run tag @s add mlsafe4
execute as @e[tag=missile,type=minecraft:armor_stand] at @s if block ~1 ~1.62 ~ minecraft:air run tag @s add mlsafe5

execute at @e[tag=missile,tag=!mlsafe1] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=!mlsafe1] run kill @e[tag=missile,tag=!mlsafe1]

execute at @e[tag=missile,tag=!mlsafe2] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=!mlsafe2] run kill @e[tag=missile,tag=!mlsafe2]

execute at @e[tag=missile,tag=!mlsafe3] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=!mlsafe3] run kill @e[tag=missile,tag=!mlsafe3]

execute at @e[tag=missile,tag=!mlsafe4] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=!mlsafe4] run kill @e[tag=missile,tag=!mlsafe4]

execute at @e[tag=missile,tag=!mlsafe5] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=!mlsafe5] run kill @e[tag=missile,tag=!mlsafe5]

execute as @e[tag=missile,type=minecraft:armor_stand] at @s if entity @e[distance=..1,type=!player,type=!armor_stand] run tag @s add mlentity
execute at @e[tag=missile,tag=mlentity] run summon minecraft:creeper ~ ~2 ~ {Fuse:0}
execute at @e[tag=missile,tag=mlentity] run kill @e[tag=missile,tag=mlentity]
