tag @e[type=armor_stand,name=consumableSlot] add running

execute at @e[type=armor_stand,name=consumableSlot] run data merge block ~ ~1 ~ {Items:[]}
execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:consumable_loottable
execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:consumable_loottable
execute at @e[type=armor_stand,name=consumableSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:consumable_loottable

schedule function bens_game:spins/consumable_spin/frames 4t append
schedule function bens_game:spins/consumable_spin/frames 8t append
schedule function bens_game:spins/consumable_spin/frames 12t append
schedule function bens_game:spins/consumable_spin/frames 16t append
schedule function bens_game:spins/consumable_spin/frames 20t append
schedule function bens_game:spins/consumable_spin/frames 24t append
schedule function bens_game:spins/consumable_spin/frames 28t append
schedule function bens_game:spins/consumable_spin/frames 32t append
schedule function bens_game:spins/consumable_spin/frames 36t append
schedule function bens_game:spins/consumable_spin/frames 40t append
schedule function bens_game:spins/consumable_spin/frames 44t append
schedule function bens_game:spins/consumable_spin/frames_end 48t append

schedule function bens_game:spins/consumable_spin/stop 88t append
