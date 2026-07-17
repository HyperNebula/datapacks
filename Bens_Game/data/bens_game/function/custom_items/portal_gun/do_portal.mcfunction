
execute if @s[scores={portal_switch=0}] run execute if entity @e[tag=portal1] run kill @e[type=area_effect_cloud,tag=portal1]
execute if @s[scores={portal_switch=1}] run execute if entity @e[tag=portal2] run kill @e[type=area_effect_cloud,tag=portal2]


execute if @s[scores={portal_switch=0}] run execute if score @s portal_range matches 1.. positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Radius:.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2400,WaitTime:0,Tags:["portal1","portal"]}
#Particle:"minecraft:air"

execute if @s[scores={portal_switch=1}] run execute if score @s portal_range matches 1.. positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Radius:.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2400,WaitTime:0,Tags:["portal2","portal"]}

function bens_game:custom_items/portal_gun/portals
