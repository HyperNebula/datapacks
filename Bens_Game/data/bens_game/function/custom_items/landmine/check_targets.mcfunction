tag @a remove landmine_target
execute as @p[distance=..4,sort=nearest,limit=1] run tag @s add landmine_target
execute at @s if entity @a[tag=landmine_target,distance=..4,limit=1] run function bens_game:custom_items/landmine/los_step0
tag @a[tag=landmine_target] remove landmine_target
