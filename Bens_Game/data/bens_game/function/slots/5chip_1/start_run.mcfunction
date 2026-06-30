tag @e[type=armor_stand,name=5Slot1] add running
tag @s add give_5chip1
clear @s minecraft:copper_nugget 5


execute at @e[type=armor_stand,name=5Slot1] run data merge block ~ ~1 ~ {Items:[]}
execute at @e[type=armor_stand,name=5Slot1] run loot replace block ~ ~1 ~ container.0 loot bens_game:slots_outcome_loottable
execute at @e[type=armor_stand,name=5Slot1] run loot replace block ~ ~1 ~ container.1 loot bens_game:slots_outcome_loottable
execute at @e[type=armor_stand,name=5Slot1] run loot replace block ~ ~1 ~ container.2 loot bens_game:slots_outcome_loottable

schedule function bens_game:slots/5chip_1/frames 4t append
schedule function bens_game:slots/5chip_1/frames 8t append
schedule function bens_game:slots/5chip_1/frames 12t append
schedule function bens_game:slots/5chip_1/frames 16t append
schedule function bens_game:slots/5chip_1/frames 20t append
schedule function bens_game:slots/5chip_1/frames 24t append
schedule function bens_game:slots/5chip_1/frames 28t append
schedule function bens_game:slots/5chip_1/frames 32t append
schedule function bens_game:slots/5chip_1/frames 36t append
schedule function bens_game:slots/5chip_1/frames 40t append
schedule function bens_game:slots/5chip_1/frames 44t append
schedule function bens_game:slots/5chip_1/frames_end 48t append

schedule function bens_game:slots/5chip_1/stop 88t append
