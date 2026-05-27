title @a[tag=roulette_player_black_iron] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
title @a[tag=roulette_player_black_copper] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
title @a[tag=roulette_player_black_gold] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
title @a[tag=roulette_player_red_iron] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
title @a[tag=roulette_player_red_copper] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
title @a[tag=roulette_player_red_gold] title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}


execute at @e[name=roulette] run playsound entity.ender_dragon.growl master @a[tag=roulette_player_red]
execute at @e[name=roulette] run playsound entity.ender_dragon.growl master @a[tag=roulette_player_black]

schedule function bens_game:roulette/stop 1t
