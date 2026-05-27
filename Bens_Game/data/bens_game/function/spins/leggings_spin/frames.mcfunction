execute at @e[type=armor_stand,name=leggingsSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=leggingsSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:leggings_loottable
execute at @e[type=armor_stand,name=leggingsSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:leggings_loottable
execute at @e[type=armor_stand,name=leggingsSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:leggings_loottable
