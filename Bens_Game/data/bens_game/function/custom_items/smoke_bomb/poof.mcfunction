execute at @e[tag=aoe_marker] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0 600 force

execute at @e[tag=aoe_marker] run effect give @a[distance=..4] minecraft:blindness 6 255 true

execute as @e[tag=aoe_marker] run schedule function bens_game:custom_items/smoke_bomb/poof 10t