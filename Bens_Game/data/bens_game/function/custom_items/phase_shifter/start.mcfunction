scoreboard players set #phase_dist dummy 0

# Summon marker at current safe spot
execute at @s run summon marker ~ ~ ~ {Tags:["phase_target"]}

# Raycast from feet forward up to 8 blocks
execute at @s positioned ^ ^ ^0.5 run function bens_game:custom_items/phase_shifter/raycast

# Teleport to the furthest safe spot found
execute at @e[type=marker,tag=phase_target,limit=1] run tp @s ~ ~ ~
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1
particle portal ~ ~1 ~ 0.5 1 0.5 1 50 normal

# Clean up
kill @e[type=marker,tag=phase_target]
