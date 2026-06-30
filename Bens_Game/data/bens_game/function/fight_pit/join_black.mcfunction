
execute if entity @e[tag=black_fighter] run title @p title {"bold":true,"color":"dark_gray","text":"Spot Taken"}
execute if entity @e[tag=black_fighter] run return fail


execute at @e[name=join_black] as @p run tag @s[tag=!red_fighter] add black_fighter
title @a[tag=black_fighter] title {"color":"black","shadow_color":-5636096,"text":"Joined Black"}


#data modify block X Y Z Items set from entity @p[tag=fighter_black] Inventory
