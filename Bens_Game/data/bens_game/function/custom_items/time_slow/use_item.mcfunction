
advancement revoke @s only bens_game:time_slow

#cool down
execute if score @s dash_cd matches 1.. run return fail
execute as @s run scoreboard players set @s dash_cd 110


#effects

effect give @a[name=!@s] mining_fatigue 1 5 true
effect give @a[name=!@s] resistance 1 5 true
effect give @a[name=!@s] slow_falling 1 5 true
effect give @a[name=!@s] slowness 1 5 true

effect give @s speed 1 1 true

tick rate 1

data modify storage bens_game:time_slow player_uuid set from entity @s UUID

schedule function bens_game:custom_items/time_slow/stop_bridge 10

