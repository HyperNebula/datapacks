
#TP players out of arena
execute as @e[name=fight_pit] run tp @p[tag=fighter_red] X Y Z
execute as @e[name=fight_pit] run  tp @p[tag=fighter_black] X Y Z

#restore Inventory
execute as @e[name=fight_pit] run data modify entity @a[tag=fighter_red] Inventory set from block X Y Z Items
execute as @e[name=fight_pit] run data modify entity @a[tag=fighter_black] Inventory set from block X Y Z Items

#remove loser tag
execute as @e[name=fight_pit] run tag @a[scores={deaths=1..}] remove fighter_red
execute as @e[name=fight_pit] run tag @a[scores={deaths=1..}] remove fighter_black


#reset death counter
execute as @e[name=fight_pit] run scoreboard players reset @a deaths

#display win screen
title @p[tag=fighter_red] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}
title @p[tag=fighter_black] title {"bold":true,"color":"red","shadow_color":-5636096,"text":"You Win"}

#give awards
execute as @e[name=fight_pit] run give @p[tag=fighter_red] minecraft:iron_nugget 2
execute as @e[name=fight_pit] run give @p[tag=fighter_black] minecraft:iron_nugget 2

#remove all tags
execute as @e[tag=fighter_black] run tag @s remove fighter_black
execute as @e[tag=fighter_red] run tag @s remove fighter_red