execute if score @s kinetic matches 1 run return fail

execute as @s run scoreboard players set @s kinetic 1

summon tnt ~ ~ ~ {fuse:0,explosion_power:0}

schedule function bens_game:enchantments/kinetic/kinetic_cd 300