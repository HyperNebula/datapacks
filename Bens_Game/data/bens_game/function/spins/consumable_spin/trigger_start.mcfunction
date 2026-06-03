advancement revoke @a only bens_game:consumable_voucher

execute at @n[type=minecraft:armor_stand,name=consumableSlot,tag=!running,distance=..3] as @s run function bens_game:spins/consumable_spin/start
