

execute as @e[name=join_black] run tag @p add fighter_black

tag @e[name=join_black] add ready

data modify block X Y Z Items set from entity @p[tag=fighter_black] Inventory



