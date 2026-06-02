


#gunpowder
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:gunpowder run clear @s minecraft:copper_nugget 5

#feather
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:feather run execute as @e[limit=2] run summon minecraft:copper_nugget[tag=temp_give_5CHIP1_item] 0 0 0


#emerald
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:emerald run execute as @e[limit=6] run summon minecraft:copper_nugget[tag=temp_give_5CHIP1_item] 0 0 0


#amethyst
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:amethyst_shard run execute as @e[limit=8] run summon minecraft:copper_nugget[tag=temp_give_5CHIP1_item] 0 0 0


#diamond
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:diamond run execute as @e[limit=10] run summon minecraft:copper_nugget[tag=temp_give_5CHIP1_item] 0 0 0


#nether star
execute at @e[type=armor_stand,name=5Slot1] run execute if items block ~ ~1 ~ container.0 minecraft:nether_star run execute as @e[limit=2] run summon minecraft:iron_nugget[tag=temp_give_5CHIP1_item] 0 0 0

