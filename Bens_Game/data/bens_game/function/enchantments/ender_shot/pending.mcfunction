execute as @e[tag=ender,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=ender,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=ender,nbt=!{inGround:1b}] at @s run particle portal ~ ~-1 ~ 0.1 0.1 0.1 0.1 10 normal

execute as @e[tag=ender,nbt={inGround:1b}] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.2
execute as @e[tag=ender,nbt={inGround:1b}] at @s on origin run tp @s ~ ~ ~
execute as @e[tag=ender,nbt={inGround:1b}] run kill @s


execute if entity @e[tag=ender,nbt=!{inGround:1b}] run schedule function bens_game:enchantments/ender_shot/pending 1 replace
