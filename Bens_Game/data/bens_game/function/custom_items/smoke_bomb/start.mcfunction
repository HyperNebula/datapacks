execute as @s[tag=!swapped] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:campfire_cosy_smoke"},Duration:600,WaitTime:5,Tags:["aoe_marker","new_smoke"]}
execute as @e[type=area_effect_cloud,tag=new_smoke] at @s run ride @s mount @e[type=snowball,tag=!swapped,distance=..0.1,limit=1]
tag @s add swapped
tag @e[type=area_effect_cloud,tag=new_smoke] remove new_smoke

schedule function bens_game:custom_items/smoke_bomb/poof 20t
