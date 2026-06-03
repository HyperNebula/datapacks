
execute if entity @e[tag=red_fighter] run title @p title {"bold":true,"color":"dark_gray","text":"Spot Taken"}
execute if entity @e[tag=red_fighter] run return fail


execute as @e[name=join_red] run tag @p add red_fighter


#data modify block X Y Z Items set from entity @p[tag=red_fighter] Inventory
