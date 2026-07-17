execute as @e[tag=homing_arrow,nbt=!{inGround:1b}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.01 1 normal
execute as @e[tag=homing_arrow,nbt=!{inGround:1b}] at @s facing entity @e[type=!item,type=!arrow,distance=2..15,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=homing_arrow,nbt=!{inGround:1b}] at @s run tp @s ^ ^ ^0.6
execute if entity @e[tag=homing_arrow,nbt=!{inGround:1b}] run schedule function bens_game:enchantments/homing/tick 1 replace
