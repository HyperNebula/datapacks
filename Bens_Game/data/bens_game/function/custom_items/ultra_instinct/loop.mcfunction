
execute as @a[scores={ultra_instinct_cd=2300..}] at @s run function bens_game:custom_items/ultra_instinct/deflect
execute at @a[scores={ultra_instinct_cd=2300..}] run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.1 15 normal
execute at @a[scores={ultra_instinct_cd=2300..}] run particle dust{color:[0.122,0.941,1.000],scale:1} ~ ~1 ~ 0.2 0.4 0.2 0.1 5 normal


execute as @a[scores={ultra_instinct_cd=2300..}] run schedule function bens_game:custom_items/ultra_instinct/loop 1
