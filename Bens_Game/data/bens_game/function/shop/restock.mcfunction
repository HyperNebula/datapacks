loot replace entity @e[type=item_frame,name=Enchant1] container.0 loot bens_game:shop_enchantment
data remove entity @e[type=interaction,tag=enchant1click,limit=1] CustomName
execute at @e[type=interaction,tag=enchant1click,limit=1] unless entity @e[type=text_display,tag=enchant1text,distance=..2] run summon text_display ~ ~ ~ {Tags:["enchant1text"],billboard:"center",transformation:{translation:[0.0f,0.8f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @e[type=text_display,tag=enchant1text,limit=1] text set from entity @e[type=item_frame,name=Enchant1,limit=1] Item.components."minecraft:custom_name"

loot replace entity @e[type=item_frame,name=Enchant2] container.0 loot bens_game:shop_enchantment
data remove entity @e[type=interaction,tag=enchant2click,limit=1] CustomName
execute at @e[type=interaction,tag=enchant2click,limit=1] unless entity @e[type=text_display,tag=enchant2text,distance=..2] run summon text_display ~ ~ ~ {Tags:["enchant2text"],billboard:"center",transformation:{translation:[0.0f,0.8f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @e[type=text_display,tag=enchant2text,limit=1] text set from entity @e[type=item_frame,name=Enchant2,limit=1] Item.components."minecraft:custom_name"

loot replace entity @e[type=item_frame,name=Enchant3] container.0 loot bens_game:shop_enchantment
data remove entity @e[type=interaction,tag=enchant3click,limit=1] CustomName
execute at @e[type=interaction,tag=enchant3click,limit=1] unless entity @e[type=text_display,tag=enchant3text,distance=..2] run summon text_display ~ ~ ~ {Tags:["enchant3text"],billboard:"center",transformation:{translation:[0.0f,0.8f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @e[type=text_display,tag=enchant3text,limit=1] text set from entity @e[type=item_frame,name=Enchant3,limit=1] Item.components."minecraft:custom_name"

loot replace entity @e[type=item_frame,name=Enchant4] container.0 loot bens_game:shop_enchantment
data remove entity @e[type=interaction,tag=enchant4click,limit=1] CustomName
execute at @e[type=interaction,tag=enchant4click,limit=1] unless entity @e[type=text_display,tag=enchant4text,distance=..2] run summon text_display ~ ~ ~ {Tags:["enchant4text"],billboard:"center",transformation:{translation:[0.0f,0.8f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @e[type=text_display,tag=enchant4text,limit=1] text set from entity @e[type=item_frame,name=Enchant4,limit=1] Item.components."minecraft:custom_name"

loot replace entity @e[type=item_frame,name=Enchant5] container.0 loot bens_game:shop_enchantment
data remove entity @e[type=interaction,tag=enchant5click,limit=1] CustomName
execute at @e[type=interaction,tag=enchant5click,limit=1] unless entity @e[type=text_display,tag=enchant5text,distance=..2] run summon text_display ~ ~ ~ {Tags:["enchant5text"],billboard:"center",transformation:{translation:[0.0f,0.8f,0.0f],scale:[0.7f,0.7f,0.7f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @e[type=text_display,tag=enchant5text,limit=1] text set from entity @e[type=item_frame,name=Enchant5,limit=1] Item.components."minecraft:custom_name"
