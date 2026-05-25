
title @a[tag=roulette_player_red] title {"bold":true,"color":"dark_red","shadow_color":-11184811,"text":"Red wins..."}
title @a[tag=roulette_player_black] title {"bold":true,"color":"dark_red","shadow_color":-11184811,"text":"Red Wins!"}


execute as @e[name=roulette] run give @a[tag=roulette_player_red] minecraft:iron_nugget[custom_name="100 chip"] 2
execute at @e[name=roulette] run playsound entity.player.levelup master @a[tag=roulette_player_red]
execute at @e[name=roulette] run playsound entity.witch.celebrate master @a[tag=roulette_player_black]


schedule function bens_game:roulette/stop 1t