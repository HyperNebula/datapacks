scoreboard players add @s combo_hits 1
scoreboard players set @s combo_timer 40

execute if score @s combo_hits matches 2 run effect give @s minecraft:speed 2 1 true
execute if score @s combo_hits matches 3 run effect give @s minecraft:speed 2 2 true
execute if score @s combo_hits matches 4.. run effect give @s minecraft:speed 2 2 true
execute if score @s combo_hits matches 4.. run effect give @s minecraft:strength 2 1 true

execute if score @s combo_hits matches 2 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1
execute if score @s combo_hits matches 3 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.2
execute if score @s combo_hits matches 4 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.5
execute if score @s combo_hits matches 5.. run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 2.0
