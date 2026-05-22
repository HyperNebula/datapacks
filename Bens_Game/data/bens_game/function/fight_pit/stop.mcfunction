
#TP players out of arena
TP @p[tag=fighter_red] X Y Z
TP @p[tag=fighter_black] X Y Z

#restore Inventory
data modify entity @p[tag=fighter_red] Inventory set from block X Y Z Items
data modify entity @p[tag=fighter_black] Inventory set from block X Y Z Items

#remove tags
tag @a[scores={deaths=1..}] remove fighter_red
tag @a[scores={deaths=1..}] remove fighter_black


#reset death counter
scoreboard players reset @a deaths

#display win screen
title @p[tag=fighter_red] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}
title @p[tag=fighter_black] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}

#give awards
give @p[tag=fighter_red] minecraft:iron_nugget 2
give @p[tag=fighter_black] minecraft:iron_nugget 2

execute as @p[tag=fighter_black] run tag @s remove fighter_black
execute as @p[tag=fighter_red] run tag @s remove fighter_red