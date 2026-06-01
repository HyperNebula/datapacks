
execute at @e[type=snowball,tag=!swapped] run summon snowball ~ ~ ~ {Tags:["swapped"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"bens_game:smoke_bomb"}},Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:campfire_cosy_smoke"},Duration:600,WaitTime:5,Tags:["aoe_marker"]}]}

data modify entity @e[type=snowball,tag=swapped,limit=1,sort=nearest] Motion set from entity @e[type=snowball,tag=!swapped,limit=1,sort=nearest] Motion

kill @e[type=snowball,tag=!swapped]


schedule function bens_game:custom_items/smoke_bomb/poof 20t