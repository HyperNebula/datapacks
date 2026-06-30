#gunpowder
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:gunpowder run clear @s minecraft:iron_nugget[custom_name="100 chip"] 3

#feather
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:feather run give @s minecraft:iron_nugget[custom_name="100 chip"] 3

#emerald
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:emerald run give @s minecraft:gold_nugget[custom_name="500 chip"] 1
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:emerald run give @s minecraft:iron_nugget[custom_name="100 chip"] 1

#amethyst
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:amethyst_shard run give @s minecraft:gold_nugget[custom_name="500 chip"] 1
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:amethyst_shard run give @s minecraft:iron_nugget[custom_name="100 chip"] 2


#diamond
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:diamond run give @s minecraft:gold_nugget[custom_name="500 chip"] 2

#nether star
execute at @e[type=armor_stand,name=500Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:nether_star run give @s minecraft:gold_nugget[custom_name="500 chip"] 3
