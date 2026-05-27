execute at @e[type=armor_stand,name=helmetSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=helmetSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:helmet_loottable
execute at @e[type=armor_stand,name=helmetSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:helmet_loottable
execute at @e[type=armor_stand,name=helmetSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:helmet_loottable
