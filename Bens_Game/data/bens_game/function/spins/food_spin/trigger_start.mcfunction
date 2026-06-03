advancement revoke @a only bens_game:food_voucher

execute at @n[type=minecraft:armor_stand,name=foodSlot,tag=!running,distance=..3] as @s run function bens_game:spins/food_spin/start
