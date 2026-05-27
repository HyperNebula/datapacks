
title @a[tag=roulette_player_black_iron] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black Wins!"}
title @a[tag=roulette_player_black_copper] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black Wins!"}
title @a[tag=roulette_player_black_gold] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black Wins!"}
title @a[tag=roulette_player_red_iron] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black wins..."}
title @a[tag=roulette_player_red_copper] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black wins..."}
title @a[tag=roulette_player_red_gold] title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black wins..."}


execute as @e[name=roulette] run give @a[tag=roulette_player_black_iron] minecraft:iron_nugget[custom_name="100 chip"] 2
execute as @e[name=roulette] run give @a[tag=roulette_player_black_copper] minecraft:copper_nugget[custom_name="5 chip"] 10
execute as @e[name=roulette] run give @a[tag=roulette_player_black_gold] minecraft:gold_nugget[custom_name="500 chip"] 2
execute at @e[name=roulette] run playsound entity.witch.celebrate master @a[tag=roulette_player_red]
execute at @e[name=roulette] run playsound entity.player.levelup master @a[tag=roulette_player_black]

schedule function bens_game:roulette/stop 1t
