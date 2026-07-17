playsound entity.fishing_bobber.throw player @a ~ ~ ~ 1 1

# Clean up any stale markers from previous uses
kill @e[type=marker,tag=grapple_target]

scoreboard players set #grapple_dist dummy 0
tag @s add grapple_caster
execute anchored eyes positioned ^ ^ ^0.5 run function bens_game:custom_items/grapple/raycast
tag @s remove grapple_caster
