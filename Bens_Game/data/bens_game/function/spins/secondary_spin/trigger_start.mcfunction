advancement revoke @a only bens_game:secondary_voucher

execute at @n[type=minecraft:armor_stand,name=secondarySlot,tag=!running,distance=..3] as @s run function bens_game:spins/secondary_spin/start
