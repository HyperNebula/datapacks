# --- BLUE PORTAL LOGIC ---
execute if entity @s[tag=blue_portal] run execute if entity @e[tag=portal1] run kill @e[type=area_effect_cloud,tag=portal1]
execute if entity @s[tag=blue_portal] run execute if score @s portal_range matches 1.. positioned ^ ^ ^-1 run summon area_effect_cloud ~ ~ ~ {Radius:.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2400,WaitTime:0,Tags:["portal1","portal"]}

# State Swap: Mark that we just fired blue, then remove the blue tag
execute if entity @s[tag=blue_portal] run tag @s add fired_blue
execute if entity @s[tag=fired_blue] run tag @s remove blue_portal


# --- ORANGE PORTAL LOGIC ---
# We check "unless blue_portal" AND "unless fired_blue" to guarantee it doesn't fire both
execute unless entity @s[tag=blue_portal] unless entity @s[tag=fired_blue] run execute if entity @e[tag=portal2] run kill @e[type=area_effect_cloud,tag=portal2]
execute unless entity @s[tag=blue_portal] unless entity @s[tag=fired_blue] run execute if score @s portal_range matches 1.. positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Radius:.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2400,WaitTime:0,Tags:["portal2","portal"]}

# State Swap: Add the blue tag so the next shot is blue
execute unless entity @s[tag=blue_portal] unless entity @s[tag=fired_blue] run tag @s add blue_portal

execute at @e[tag=portal] run playsound ui.hud.bubble_pop ambient @s ~ ~ ~ 10 1


# --- CLEANUP ---
# Remove the safety tag so everything works normally on the next right-click
tag @s remove fired_blue

function bens_game:custom_items/portal_gun/portals



#/give @s goat_horn[use_cooldown={seconds:2.0f},item_model="bens_game:portal_gun",custom_name="Portal Gun",instrument={use_duration:.05f,range:100.0f,sound_event:"minecraft:item.spear.lunge_1",description:{text:"Portal Gun",color:"gray"}}] 1