
execute if score @s ultra_instinct_cd matches 1.. run return fail

stopsound @a
playsound bens_game:custom.ultra_instinct master @a ~ ~ ~ 100 1

execute as @s run scoreboard players set @s ultra_instinct_cd 3600
effect give @s resistance 65 1 true
effect give @s speed 65 1 true

execute at @a[scores={ultra_instinct_cd=2300..}] run particle dust{color:[0.122,0.941,1.000],scale:1} ~ ~1 ~ 0.2 0.4 0.2 1 300 normal

schedule function bens_game:custom_items/ultra_instinct/loop 1 append


schedule function bens_game:custom_items/ultra_instinct/stop 1300 append