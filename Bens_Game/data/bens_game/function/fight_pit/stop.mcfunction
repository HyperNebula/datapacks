
#TP players out of arena
tp @a[tag=red_fighter] -29 -22 28
tp @a[tag=black_fighter] -29 -22 26

#restore Inventory
#execute as @a[tag=red_fighter] run data modify entity @s Inventory set from block X Y Z Items
#execute as @a[tag=black_fighter] run data modify entity @s Inventory set from block X Y Z Items

#restore players to lobbu team
team join lobby @a[tag=red_fighter]
team join lobby @a[tag=black_fighter]

#remove loser tag
tag @a[scores={deaths=1..}] remove red_fighter
tag @a[scores={deaths=1..}] remove black_fighter

#reset death counter
scoreboard players reset @a deaths

#display win screen
title @a[tag=red_fighter] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}
title @a[tag=black_fighter] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}

#give awards
give @a[tag=red_fighter] minecraft:iron_nugget 2
give @a[tag=black_fighter] minecraft:iron_nugget 2

#remove all tags
execute as @e[tag=black_fighter] run tag @s remove black_fighter
execute as @e[tag=red_fighter] run tag @s remove red_fighter