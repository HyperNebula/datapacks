
execute if entity @e[tag=black_fighter] run title @p title {"bold":true,"color":"dark_gray","text":"Spot Taken"}
execute if entity @e[tag=black_fighter] run return fail


execute as @e[name=join_black] run tag @p add black_fighter


#data modify block X Y Z Items set from entity @p[tag=fighter_black] Inventory
