advancement revoke @a only bens_game:block_voucher

execute at @n[type=minecraft:armor_stand,name=blockSlot,tag=!running,distance=..3] as @s run function bens_game:spins/block_spin/start
