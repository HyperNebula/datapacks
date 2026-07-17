tag @a remove snare_target
execute as @p[distance=..4,sort=nearest,limit=1] run tag @s add snare_target
execute at @s if entity @a[tag=snare_target,distance=..4,limit=1] run function bens_game:custom_items/snare/los_step0
tag @a[tag=snare_target] remove snare_target
