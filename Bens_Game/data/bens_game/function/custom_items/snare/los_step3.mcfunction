execute at @s facing entity @a[tag=snare_target,limit=1,sort=nearest] eyes positioned ^ ^ ^3.5 run function bens_game:custom_items/snare/check_point
execute at @s facing entity @a[tag=snare_target,limit=1,sort=nearest] eyes positioned ^ ^ ^4.0 if block ~ ~ ~ minecraft:air run function bens_game:custom_items/snare/los_step4
execute at @s facing entity @a[tag=snare_target,limit=1,sort=nearest] eyes positioned ^ ^ ^4.0 if block ~ ~ ~ minecraft:cave_air run function bens_game:custom_items/snare/los_step4
execute at @s facing entity @a[tag=snare_target,limit=1,sort=nearest] eyes positioned ^ ^ ^4.0 if block ~ ~ ~ minecraft:void_air run function bens_game:custom_items/snare/los_step4
