execute as @a unless score @s cloak_id matches 1.. run function bens_game:init_player

#fight_pit end
execute as @a[scores={deaths=1..},tag=red_fighter,tag=!pit_stopping] run function bens_game:fight_pit/delay
execute as @a[scores={deaths=1..},tag=black_fighter,tag=!pit_stopping] run function bens_game:fight_pit/delay

#death and respawn
execute as @a[tag=playing,scores={respawn_time=5}] run function bens_game:control_match/game_death

#winning player
execute store result score pCount playercount if entity @a[tag=playing]
execute if score pCount playercount matches 1 as @a[tag=playing] run function bens_game:control_match/reset

#--------------------- Custom Items -----------------------#

#portal_gun
execute as @a[scores={portal_delay=1..}] run scoreboard players remove @s dash_cd 1
#execute as @a[scores={portal_delay=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
#execute as @a[scores={portal_delay=0}] run scoreboard players reset @s dash_cd

#time_stop
execute as @a[scores={time_slow_cd=1..}] run scoreboard players remove @s time_slow_cd 1

#domain
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:domain"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/domain/start

#zombie_staff
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/zombie_staff/start

#landmine
execute store result score #this timestamp run time query gametime
execute as @e[tag=landmine,tag=!active] if score @s timestamp <= #this timestamp run function bens_game:custom_items/landmine/activate
execute as @e[tag=landmine,tag=active] at @s if entity @p[distance=..4] run function bens_game:custom_items/landmine/check_targets

#snare
execute as @e[tag=snare,tag=!active] if score @s timestamp <= #this timestamp run function bens_game:custom_items/snare/activate
execute as @e[tag=snare,tag=active] at @s if entity @p[distance=..4] run function bens_game:custom_items/snare/check_targets

#smoke_bomb
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb:1b}}}}] run function bens_game:custom_items/smoke_bomb/start

#tox_gas
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{tox_gas:1b}}}}] run function bens_game:custom_items/tox_gas/start

scoreboard players set @a[scores={use_wand=1..}] use_wand 0

#--------------------- Enchantments -----------------------#


#cloaking
# Check cloaked players and uncloak them if they stop sneaking
execute as @a[tag=cloaking] unless predicate bens_game:is_sneaking run function bens_game:enchantments/cloaking/stop
# Check if cloaked players attacked someone
execute as @a[tag=cloaking,scores={cloak_dmg=1..}] run function bens_game:enchantments/cloaking/stop
# Re-apply invisibility to cloaking players so it doesn't expire
execute as @a[tag=cloaking] run effect give @s minecraft:invisibility 2 0 true
# Manage cooldowns
execute as @a[scores={cloak_cd=1..}] run scoreboard players remove @s cloak_cd 1
scoreboard players reset @a cloak_dmg

#dash
execute as @a[scores={dash_cd=1..}] run scoreboard players remove @s dash_cd 1
execute as @a[scores={dash_cd=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
execute as @a[scores={dash_cd=0}] run scoreboard players reset @s dash_cd

#cocoon
execute as @a[scores={coocoon_cd=1..}] run scoreboard players remove @s coocoon_cd 1
execute as @a[scores={coocoon_cd=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
execute as @a[scores={coocoon_cd=0}] run scoreboard players reset @s coocoon_cd

#pull
execute as @a[scores={pull_cd=1..}] run scoreboard players remove @s pull_cd 1
execute as @a[scores={pull_cd=0}] at @s run playsound entity.ravager.stunned ambient @s ~ ~ ~ 1 1
execute as @a[scores={pull_cd=0}] run scoreboard players reset @s pull_cd

execute as @a[scores={grapple_cd=1..}] run scoreboard players remove @s grapple_cd 1
execute as @a[scores={grapple_cd=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
execute as @a[scores={grapple_cd=0}] run scoreboard players reset @s grapple_cd

execute as @a[scores={phase_cd=1..}] run scoreboard players remove @s phase_cd 1
execute as @a[scores={phase_cd=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
execute as @a[scores={phase_cd=0}] run scoreboard players reset @s phase_cd

execute as @a[scores={repulsion_cd=1..}] run scoreboard players remove @s repulsion_cd 1
execute as @a[scores={repulsion_cd=0}] at @s run playsound entity.breeze.charge ambient @s ~ ~ ~ 1 1
execute as @a[scores={repulsion_cd=0}] run scoreboard players reset @s repulsion_cd

execute as @a[scores={snare_timer=1..}] run scoreboard players remove @s snare_timer 1
execute as @a[scores={snare_timer=0}] run attribute @s minecraft:gravity base reset
execute as @a[scores={snare_timer=0}] run scoreboard players reset @s snare_timer


# Manage combo timer
execute as @a[scores={combo_timer=1..}] run scoreboard players remove @s combo_timer 1
execute as @a[scores={combo_timer=0}] run scoreboard players reset @s combo_hits
execute as @a[scores={combo_timer=0}] run scoreboard players reset @s combo_timer

#gravity well
# Trigger on block hits
execute as @e[type=arrow,tag=gravity_arrow,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["gravity_center"]}
execute as @e[type=arrow,tag=gravity_arrow,nbt={inGround:1b}] at @s run particle portal ~ ~1 ~ 1 1 1 0.1 100
execute as @e[type=arrow,tag=gravity_arrow,nbt={inGround:1b}] at @s run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 0.5
execute as @e[type=arrow,tag=gravity_arrow,nbt={inGround:1b}] run kill @s
# Continuous gravity logic
execute as @e[tag=gravity_center] at @s run particle portal ~ ~0.5 ~ 1 1 1 0 10
execute as @e[tag=gravity_center] at @s run launch @e[distance=0.1..3,type=!item] toward @s 0.5


# reverse gravity logic
execute positioned -214 -36 0 run tag @e[distance=..24] add reverse_grav
tag @a[x=-215,y=-12,z=-1,dx=4,dy=31,dz=4] add reverse_grav
execute as @a[tag=reverse_grav] run attribute @s minecraft:gravity base set -0.02
execute as @a[tag=!reverse_grav] run attribute @s minecraft:gravity base reset
tag @a remove reverse_grav
