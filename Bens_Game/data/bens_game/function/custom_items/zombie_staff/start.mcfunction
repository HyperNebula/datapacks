
#create a zombie team, join it, and make mobs on the same team friendly
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run team add zombie
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run team join zombie
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run team modify zombie friendlyFire false

#damage self for 3 hearts
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run damage @s 6 magic

#summon 4 zombies on all sides and add them to the summoners team
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run /summon zombie ^ ^ ^2 {Team:"zombie"}
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run /summon zombie ^ ^ ^-2 {Team:"zombie"}
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run /summon zombie ^2 ^ ^ {Team:"zombie"}
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_model_data=1003] run /summon zombie ^-2 ^ ^ {Team:"zombie"}
