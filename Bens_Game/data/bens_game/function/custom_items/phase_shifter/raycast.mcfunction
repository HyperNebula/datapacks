scoreboard players add #phase_dist dummy 1

# If the block here and above is safe, move the marker to this spot
execute if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @e[type=marker,tag=phase_target,limit=1] ~ ~ ~

# Continue up to 8 blocks (16 steps of 0.5)
execute if score #phase_dist dummy matches ..16 positioned ^ ^ ^0.5 run function bens_game:custom_items/phase_shifter/raycast
