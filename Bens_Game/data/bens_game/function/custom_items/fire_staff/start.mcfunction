execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1002] run say fire... ah... scary

execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1002] run summon armor_stand ~ ~ ~ {Tags:["FireRing"], Marker:1b, Invisible:1b}
execute at @e[tag=FireRing] run particle minecraft:flame ^ ^ ^3
execute as @e[tag=FireRing] at @s run tp @s ^ ^ ^0.2

schedule function bens_game:custom_items/fire_staff/end 40t