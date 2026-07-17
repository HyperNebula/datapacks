execute as @s[tag=!swapped] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,WaitTime:5,Tags:["tox_marker","new_tox"]}
execute as @e[type=area_effect_cloud,tag=new_tox] at @s run ride @s mount @e[type=snowball,tag=!swapped,distance=..0.1,limit=1]
tag @s add swapped
tag @e[type=area_effect_cloud,tag=new_tox] remove new_tox

schedule function bens_game:custom_items/tox_gas/poof 20t
