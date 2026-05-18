execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.0 loot minecraft:archaeology/desert_pyramid
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.1 loot minecraft:archaeology/desert_pyramid
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.2 loot minecraft:archaeology/desert_pyramid

execute at @e[type=armor_stand,name=secondarySlot] run fill ~ ~ ~1 ~ ~ ~1 lever[powered=false,facing=south] replace minecraft:lever
execute at @e[type=armor_stand,name=secondarySlot] run fill ~ ~ ~-1 ~ ~ ~-1 lever[powered=false,facing=north] replace minecraft:lever
execute at @e[type=armor_stand,name=secondarySlot] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever
execute at @e[type=armor_stand,name=secondarySlot] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever

schedule function bens_game:spins/secondary_spin/frame_5 4t
