tag @e[type=armor_stand,name=secondarySlot] add running
tag @s add secondary_give
clear @s minecraft:goat_horn[custom_name="Secondary Voucher",item_model="minecraft:flow_armor_trim_smithing_template"] 1

execute at @e[type=armor_stand,name=secondarySlot] run data merge block ~ ~1 ~ {Items:[]}
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:secondary_loottable
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:secondary_loottable
execute at @e[type=armor_stand,name=secondarySlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:secondary_loottable

schedule function bens_game:spins/secondary_spin/frames 4t append
schedule function bens_game:spins/secondary_spin/frames 8t append
schedule function bens_game:spins/secondary_spin/frames 12t append
schedule function bens_game:spins/secondary_spin/frames 16t append
schedule function bens_game:spins/secondary_spin/frames 20t append
schedule function bens_game:spins/secondary_spin/frames 24t append
schedule function bens_game:spins/secondary_spin/frames 28t append
schedule function bens_game:spins/secondary_spin/frames 32t append
schedule function bens_game:spins/secondary_spin/frames 36t append
schedule function bens_game:spins/secondary_spin/frames 40t append
schedule function bens_game:spins/secondary_spin/frames 44t append
schedule function bens_game:spins/secondary_spin/frames_end 48t append

schedule function bens_game:spins/secondary_spin/stop 88t append
