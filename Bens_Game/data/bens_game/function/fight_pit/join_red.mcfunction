
execute if entity @e[tag=red_fighter] run title @p title {"bold":true,"color":"dark_gray","text":"Spot Taken"}
execute if entity @e[tag=red_fighter] run return fail


execute at @e[name=join_red] as @p run tag @s[tag=!black_fighter] add red_fighter
title @a[tag=red_fighter] title {"color":"dark_red","text":"Joined Red"}

#data modify block X Y Z Items set from entity @p[tag=red_fighter] Inventory
