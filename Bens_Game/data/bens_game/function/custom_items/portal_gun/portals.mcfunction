

execute as @e[tag=portal1] run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=portal1] run particle dust{color:[0.000,0.031,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=portal1] run tp @p[distance=..0.5,scores=!{portal_delay=1..}] @n[tag=portal2]
execute at @e[tag=portal1] run execute as @p[distance=..0.5] run scoreboard players set @s portal_delay 40


execute as @e[tag=portal2] run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=portal2] run particle dust{color:[1.000,0.392,0.039],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=portal2] run tp @p[distance=..0.5,scores=!{portal_delay=1..}] @n[tag=portal1]
execute at @e[tag=portal2] run execute as @p[distance=..0.5] run scoreboard players set @s portal_delay 40


execute if entity @e[type=area_effect_cloud,tag=portal] run schedule function bens_game:custom_items/portal_gun/portals 1