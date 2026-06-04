
#fight_pit end
execute as @a[scores={deaths=1..},tag=red_fighter] run function bens_game:fight_pit/stop
execute as @a[scores={deaths=1..},tag=black_fighter] run function bens_game:fight_pit/stop

#blackjack scoring
#execute as @a[scores={player_score=22..}] run function bens_game:blackjack/player_bust
#execute as @a[scores={dealer_score=22..}] run function bens_game:blackjack/dealer_bust

execute as @a[tag=playing,scores={deaths=1..}] run function bens_game:control_match/game_death

execute store result score pCount playercount if entity @a[tag=playing]
execute if score pCount playercount matches 1 as @a[tag=playing] run function bens_game:control_match/reset

#--------------------- Custom Items -----------------------#

#domain
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:domain"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/domain/start

#zombie_staff
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/zombie_staff/start

#landmine
execute as @e[tag=landmine,tag=active] at @s if entity @p[distance=..4] run function bens_game:custom_items/landmine/check_targets

#smoke_bomb
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb:1b}}}}] run function bens_game:custom_items/smoke_bomb/start

scoreboard players set @a[scores={use_wand=1..}] use_wand 0
