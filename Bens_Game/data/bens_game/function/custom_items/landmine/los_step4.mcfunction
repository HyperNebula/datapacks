execute at @s facing entity @a[tag=landmine_target,limit=1,sort=nearest] eyes positioned ^ ^ ^2.5 run function bens_game:custom_items/landmine/check_point
execute at @s facing entity @a[tag=landmine_target,limit=1,sort=nearest] eyes positioned ^ ^ ^3.0 if block ~ ~ ~ minecraft:air run function bens_game:custom_items/landmine/los_step5
execute at @s facing entity @a[tag=landmine_target,limit=1,sort=nearest] eyes positioned ^ ^ ^3.0 if block ~ ~ ~ minecraft:cave_air run function bens_game:custom_items/landmine/los_step5
execute at @s facing entity @a[tag=landmine_target,limit=1,sort=nearest] eyes positioned ^ ^ ^3.0 if block ~ ~ ~ minecraft:void_air run function bens_game:custom_items/landmine/los_step5
