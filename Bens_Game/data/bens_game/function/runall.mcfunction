
#fight_pit end
execute as @a[scores={deaths=1..},tag=red_fighter,tag=!pit_stopping] run function bens_game:fight_pit/delay
execute as @a[scores={deaths=1..},tag=black_fighter,tag=!pit_stopping] run function bens_game:fight_pit/delay

#death and respawn
execute as @a[tag=playing,scores={respawn_time=5}] run function bens_game:control_match/game_death

#winning player
execute store result score pCount playercount if entity @a[tag=playing]
execute if score pCount playercount matches 1 as @a[tag=playing] run function bens_game:control_match/reset

#--------------------- Custom Items -----------------------#

#domain
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:domain"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/domain/start

#zombie_staff
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/zombie_staff/start

#landmine
execute store result score #this timestamp run time query gametime
execute as @e[tag=landmine,tag=!active] if score @s timestamp <= #this timestamp run function bens_game:custom_items/landmine/activate
execute as @e[tag=landmine,tag=active] at @s if entity @p[distance=..4] run function bens_game:custom_items/landmine/check_targets

#smoke_bomb
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb:1b}}}}] run function bens_game:custom_items/smoke_bomb/start

scoreboard players set @a[scores={use_wand=1..}] use_wand 0
