
execute as @p[tag=roulette_player_red] run title @s title {"bold":true,"color":"dark_red","shadow_color":-11184811,"text":"Red Wins!"}
execute as @p[tag=roulette_player_black] run title @s title {"bold":true,"color":"dark_red","shadow_color":-11184811,"text":"Red wins..."}

execute as @p[tag=roulette_player_red] run give @s minecraft:iron_nugget 2
playsound entity.witch.celebrate master @p[tag=roulette_player_black]
playsound entity.player.levelup master @p[tag=roulette_player_red]

schedule function bens_game:roulette/stop 1t