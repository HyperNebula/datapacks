execute at @e[type=armor_stand,name=bootsSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=bootsSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:boots_loottable
execute at @e[type=armor_stand,name=bootsSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:boots_loottable
execute at @e[type=armor_stand,name=bootsSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:boots_loottable
