
advancement revoke @s only bens_game:time_stop


execute if score @s dash_cd matches 1.. run return fail

say hi
#tag @s add time_slower


#effect give @e[tag=!time_slower] mining_fatigue 10 5 true
#effect give @e[tag=!time_slower] resistance 10 5 true
#effect give @e[tag=!time_slower] slow_falling 10 5 true
#effect give @e[tag=!time_slower] slowness 10 5 true


effect give @s speed 1 1 true

tick entity @s rate 20

tick rate 2

schedule function bens_game:custom_items/time_slow/stop 200