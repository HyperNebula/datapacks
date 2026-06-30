#gunpowder
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:feather run clear @s minecraft:copper_nugget[custom_name="5 chip"] 5

#feather
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:feather run give @s minecraft:copper_nugget[custom_name="5 chip"] 2

#emerald
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:emerald run give @s minecraft:copper_nugget[custom_name="5 chip"] 6

#amethyst
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:amethyst_shard run give @s minecraft:copper_nugget[custom_name="5 chip"] 8

#diamond
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:diamond run give @s minecraft:copper_nugget[custom_name="5 chip"] 10

#nether star
execute at @e[type=armor_stand,name=5slot2] run execute if items block ~ ~1 ~ container.0 minecraft:nether_star run give @s minecraft:copper_nugget[custom_name="5 chip"] 12
