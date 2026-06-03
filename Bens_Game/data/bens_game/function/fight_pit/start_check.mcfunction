say hi
execute if entity @e[tag=red_fighter] if entity @e[tag=black_fighter] run function bens_game:fight_pit/start

execute if entity @e[tag=red_fighter] if entity @e[tag=black_fighter] run return fail

execute unless entity @e[tag=red_fighter] unless entity @e[tag=black_fighter] run title @a title {"bold":true,"color":"dark_gray","text":"There are no fighters"}

execute unless entity @e[tag=red_fighter] unless entity @e[tag=black_fighter] run return fail

execute unless entity @e[tag=red_fighter] if entity @e[tag=black_fighter] run title @a title {"bold":true,"color":"black","text":"We need a red fighter!"}

execute unless entity @e[tag=black_fighter] if entity @e[tag=red_fighter] run title @a title {"bold":true,"color":"black","text":"We need a black fighter!"}
