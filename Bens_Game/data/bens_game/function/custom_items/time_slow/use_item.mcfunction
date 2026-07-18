
advancement revoke @s only bens_game:time_slow


execute if score @s dash_cd matches 1.. run return fail
execute as @s run scoreboard players set @s dash_cd 110


tag @s add time_slower


effect give @a[tag=!time_slower] mining_fatigue 1 5 true
effect give @a[tag=!time_slower] resistance 1 5 true
effect give @a[tag=!time_slower] slow_falling 1 5 true
effect give @a[tag=!time_slower] slowness 1 5 true


effect give @s speed 1 1 true


tag @s remove time_slower

tick rate 1

data modify storage bens_game:time_slow player_uuid set from entity @s UUID

schedule function bens_game:custom_items/time_slow/stop_bridge 10

