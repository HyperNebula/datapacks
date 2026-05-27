execute at @e[type=armor_stand,name=foodSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=foodSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:food_loottable
execute at @e[type=armor_stand,name=foodSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:food_loottable
execute at @e[type=armor_stand,name=foodSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:food_loottable
