execute at @e[type=armor_stand,name=consumableSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:consumable_loottable
execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:consumable_loottable
execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:consumable_loottable
