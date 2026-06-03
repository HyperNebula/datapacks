advancement revoke @a only bens_game:weapon_voucher

execute at @n[type=minecraft:armor_stand,name=weaponSlot,tag=!running,distance=..3] as @s run function bens_game:spins/weapon_spin/start
