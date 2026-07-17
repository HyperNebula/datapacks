
execute as @e[tag=swap,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=swap,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=swap,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal

execute if entity @e[tag=swap,nbt=!{inGround:1b}] run schedule function bens_game:enchantments/swap_shot/pending 1 replace

execute as @e[tag=swap,nbt={inGround:1b}] at @s run schedule function bens_game:enchantments/swap_shot/clean 10 append