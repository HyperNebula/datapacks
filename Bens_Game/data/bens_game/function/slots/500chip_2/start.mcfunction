tag @e[type=armor_stand,name=500Slot2] add running
clear @s minecraft:gold_nugget 1

execute at @e[type=armor_stand,name=500Slot2] run data merge block ~ ~1 ~ {Items:[]}
execute at @e[type=armor_stand,name=500Slot2] run loot replace block ~ ~1 ~ container.0 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=500Slot2] run loot replace block ~ ~1 ~ container.1 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=500Slot2] run loot replace block ~ ~1 ~ container.2 loot bens_game:weapon_loottable

schedule function bens_game:slots/500chip_2/frames 4t append
schedule function bens_game:slots/500chip_2/frames 8t append
schedule function bens_game:slots/500chip_2/frames 12t append
schedule function bens_game:slots/500chip_2/frames 16t append
schedule function bens_game:slots/500chip_2/frames 20t append
schedule function bens_game:slots/500chip_2/frames 24t append
schedule function bens_game:slots/500chip_2/frames 28t append
schedule function bens_game:slots/500chip_2/frames 32t append
schedule function bens_game:slots/500chip_2/frames 36t append
schedule function bens_game:slots/500chip_2/frames 40t append
schedule function bens_game:slots/500chip_2/frames 44t append
schedule function bens_game:slots/500chip_2/frames_end 48t append

schedule function bens_game:slots/500chip_2/stop 88t append
