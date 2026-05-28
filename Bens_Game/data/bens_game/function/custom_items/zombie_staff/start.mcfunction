
#create a zombie team, join it, and make mobs on the same team friendly
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run team add zombie
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run team join zombie
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run team modify zombie friendlyFire false

#damage self for 3 hearts
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute as @a[scores={use_wand=1..}] run damage @s 6 magic

#summon 4 zombies on all sides and add them to the summoners team
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute at @a[scores={use_wand=1..}] run summon zombie ^ ^1 ^2 {Team:"zombie",equipment:{head:{id:"minecraft:iron_helmet",count:1}},drop_chances:{head:0.000},attributes:[{id:"minecraft:max_health",base:10}]}
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute at @a[scores={use_wand=1..}] run summon zombie ^2 ^1 ^1 {Team:"zombie",equipment:{head:{id:"minecraft:iron_helmet",count:1}},drop_chances:{head:0.000},attributes:[{id:"minecraft:max_health",base:10}]}
execute as @a[scores={use_wand=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:item_model="bens_game:zombie_staff"] run execute at @a[scores={use_wand=1..}] run summon zombie ^-2 ^1 ^1 {Team:"zombie",equipment:{head:{id:"minecraft:iron_helmet",count:1}},drop_chances:{head:0.000},attributes:[{id:"minecraft:max_health",base:10}]}

#schedule end
schedule function bens_game:custom_items/zombie_staff/end 600t