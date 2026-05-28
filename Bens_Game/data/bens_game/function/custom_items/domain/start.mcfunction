
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:domain"] run tag @s add domain_user
execute at @a[tag=domain_user] run tag @e[distance=1..4,tag=!domain_user] add domain_target

#summon a marker to user position: user_marker                Marker:1b,Invisible:1b,
execute at @a[tag=domain_user] run summon armor_stand ~ ~ ~ {CustomName:"user_marker"}

#summon a marker to target position: target_marker
execute at @e[tag=domain_target,type=!armor_stand] run summon armor_stand ~ ~ ~ {CustomName:"target_marker"}

#create dome
execute at @e[name=user_marker] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:black_concrete replace air
execute at @e[name=user_marker] run fill ~4 ~2 ~2 ~-4 ~-2 ~-2 minecraft:black_concrete replace air
execute at @e[name=user_marker] run fill ~2 ~2 ~4 ~-2 ~-2 ~-4 minecraft:black_concrete replace air
execute at @e[name=user_marker] run fill ~2 ~4 ~2 ~-2 ~-4 ~-2 minecraft:black_concrete replace air

#give target blindness
effect give @a[tag=domain_target] minecraft:blindness 2 4 true
effect give @a[tag=domain_user] minecraft:blindness 2 4 true
gamemode adventure @a[tag=domain_target]
gamemode adventure @a[tag=domain_user]

#display name
title @a[tag=domain_target] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Domain Exansion..."}
title @a[tag=domain_user] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Domain Exansion..."}

#tp everyone tagged into the prebuilt structure
execute as @a[tag=domain_user] run tp @a[tag=domain_user] 4 -23 -87 facing -8 -27 -87
execute as @a[tag=domain_user] run tp @e[tag=domain_target] -8 -27 -87 facing 4 -23 -87

schedule function bens_game:custom_items/domain/display_name 60t

schedule function bens_game:custom_items/domain/effects 80t
schedule function bens_game:custom_items/domain/end 400t