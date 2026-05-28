
#fight_pit end
#execute as @a[scores={deaths=1..}] run function bens_game:fight_pit/stop

#blackjack scoring
#execute as @a[scores={player_score=22..}] run function bens_game:blackjack/player_bust
#execute as @a[scores={dealer_score=22..}] run function bens_game:blackjack/dealer_bust




#--------------------- Custom Items -----------------------#

#domain
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:domain"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/domain/start

#fire_staff
#execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1002] run function bens_game:custom_items/fire_staff/start

#zombie_staff
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run function bens_game:custom_items/zombie_staff/start


scoreboard players set @a[scores={use_wand=1..}] use_wand 0