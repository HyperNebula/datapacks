advancement revoke @a only bens_game:custom_item_voucher

execute at @n[type=minecraft:armor_stand,name=custom_itemSlot,tag=!running,distance=..3] as @s run function bens_game:spins/custom_item_spin/start
