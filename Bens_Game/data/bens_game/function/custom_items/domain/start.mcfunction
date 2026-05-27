
execute as @a[tag=domain_user] run tag @a[distance=1..4] add domain_target

#summon a marker to user position: user_marker
execute as @a[tag=domain_user] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"user_marker"}

#summon a marker to target position: target_marker
execute as @a[tag=domain_target] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"target_marker"}

#create dome
execute as @a[tag=domain_user] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:tinted_glass replace air

#give target blindness
effect give @a[tag=domain_target] minecraft:blindness 2 4 true

#tp everyone tagged into the prebuilt structure
execute as @a[tag=domain_user] tp @a[tag=domain_user] x y z
execute as @a[tag=domain_user] tp @a[tag=domain_target] x y z


schedule function bens_game:domain/effects  80t
schedule function bens_game:domain/end 600t