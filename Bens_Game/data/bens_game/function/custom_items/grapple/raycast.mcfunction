scoreboard players add #grapple_dist dummy 1

particle crit ~ ~ ~ 0 0 0 0 1 normal

# Check if hit entity (not the caster) — run as the hit entity and launch it toward the caster
execute as @e[distance=..1.0,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run launch @s toward @a[tag=grapple_caster,limit=1] 5
execute if entity @e[distance=..1.0,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run playsound block.chain.fall player @a ~ ~ ~ 1 1
execute if entity @e[distance=..1.0,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run return 1

# Check if hit block — summon a marker at impact, then run launch AS the caster so @s works correctly
execute unless block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["grapple_target"]}
execute if entity @e[type=marker,tag=grapple_target,limit=1] as @a[tag=grapple_caster,limit=1] at @e[type=marker,tag=grapple_target,limit=1] run launch @s toward ~ ~1 ~ 1
execute if entity @e[type=marker,tag=grapple_target,limit=1] run playsound block.chain.place player @a ~ ~ ~ 1 1
execute if entity @e[type=marker,tag=grapple_target,limit=1] run kill @e[type=marker,tag=grapple_target]
execute if entity @e[type=marker,tag=grapple_target,limit=1] run return 1

# Continue raycast up to 30 blocks (60 steps of 0.5)
execute if score #grapple_dist dummy matches ..60 positioned ^ ^ ^0.5 run function bens_game:custom_items/grapple/raycast
