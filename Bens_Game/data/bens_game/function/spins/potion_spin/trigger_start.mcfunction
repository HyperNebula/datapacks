advancement revoke @a only bens_game:potion_voucher

execute at @n[type=minecraft:armor_stand,name=potionSlot,tag=!running,distance=..3] as @s run function bens_game:spins/potion_spin/start
