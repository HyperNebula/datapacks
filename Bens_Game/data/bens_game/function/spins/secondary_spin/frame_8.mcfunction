execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.0 loot minecraft:archaeology/desert_pyramid
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.1 loot minecraft:archaeology/desert_pyramid
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.2 loot minecraft:archaeology/desert_pyramid
schedule function bens_game:spins/secondary_spin/frame_9 4t
