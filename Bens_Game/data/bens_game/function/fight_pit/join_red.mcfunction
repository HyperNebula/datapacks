
execute as @e[name=join_red] run tag @p add fighter_red

tag @e[name=join_red] add ready


data modify block X Y Z Items set from entity @p[tag=fighter_red] Inventory

