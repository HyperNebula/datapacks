execute at @e[tag=tox_marker] run particle entity_effect{color:[0.2,0.8,0.2,1.0]} ~ ~ ~ 2 1 2 0 100 force
execute at @e[tag=tox_marker] run particle campfire_signal_smoke ~ ~ ~ 2 1 2 0 10 force

execute at @e[tag=tox_marker] run effect give @a[distance=..4] minecraft:poison 1 1 true
execute at @e[tag=tox_marker] run effect give @a[distance=..4] minecraft:nausea 2 0 true

execute as @e[tag=tox_marker] run schedule function bens_game:custom_items/tox_gas/poof 10t
