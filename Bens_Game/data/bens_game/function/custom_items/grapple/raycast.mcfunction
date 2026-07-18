scoreboard players add #grapple_dist dummy 1

particle crit ~ ~ ~ 0 0 0 0 1 normal

execute as @e[distance=..1.5,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run launch @s setMotionY 0.5
execute as @e[distance=..1.5,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run launch @s toward @a[tag=grapple_caster,limit=1] 3
execute if entity @e[distance=..1.5,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run playsound block.chain.fall player @a ~ ~ ~ 1 1
execute if entity @e[distance=..1.5,type=!item,type=!experience_orb,tag=!grapple_caster,limit=1,sort=nearest] run return 1

execute unless block ~ ~ ~ air as @a[tag=grapple_caster,limit=1] run launch @s toward ~ ~1 ~ 3
execute unless block ~ ~ ~ air as @a[tag=grapple_caster,limit=1] run attribute @s minecraft:fall_damage_multiplier base set 0
execute unless block ~ ~ ~ air as @a[tag=grapple_caster,limit=1] run scoreboard players set @s grapple_fall_timer 80
execute unless block ~ ~ ~ air run playsound block.chain.place player @a ~ ~ ~ 1 1
execute unless block ~ ~ ~ air run return 1

# Continue raycast up to 30 blocks (60 steps of 0.5)
execute if score #grapple_dist dummy matches ..80 positioned ^ ^ ^0.5 run function bens_game:custom_items/grapple/raycast
