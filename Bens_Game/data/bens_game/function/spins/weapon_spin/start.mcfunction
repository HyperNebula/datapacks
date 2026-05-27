tag @e[type=armor_stand,name=weaponSlot] add running

execute at @e[type=armor_stand,name=weaponSlot] run data merge block ~ ~1 ~ {Items:[]}
execute at @e[type=armor_stand,name=weaponSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=weaponSlot] run loot replace block ~ ~1 ~ container.1 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=weaponSlot] run loot replace block ~ ~1 ~ container.2 loot bens_game:weapon_loottable

schedule function bens_game:spins/weapon_spin/frames 4t append
schedule function bens_game:spins/weapon_spin/frames 8t append
schedule function bens_game:spins/weapon_spin/frames 12t append
schedule function bens_game:spins/weapon_spin/frames 16t append
schedule function bens_game:spins/weapon_spin/frames 20t append
schedule function bens_game:spins/weapon_spin/frames 24t append
schedule function bens_game:spins/weapon_spin/frames 28t append
schedule function bens_game:spins/weapon_spin/frames 32t append
schedule function bens_game:spins/weapon_spin/frames 36t append
schedule function bens_game:spins/weapon_spin/frames 40t append
schedule function bens_game:spins/weapon_spin/frames 44t append
schedule function bens_game:spins/weapon_spin/frames_end 48t append

schedule function bens_game:spins/weapon_spin/stop 88t append
