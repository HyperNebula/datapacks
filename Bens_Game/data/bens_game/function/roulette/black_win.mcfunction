
execute as @p[tag=roulette_player_black] run title @s title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black Wins!"}
execute as @p[tag=roulette_player_red] run title @s title {"bold":true,"color":"black","shadow_color":-5636096,"text":"Black wins..."}

execute as @p[tag=roulette_player_black] run give @s minecraft:iron_nugget 2
playsound entity.witch.celebrate master @p[tag=roulette_player_red]
playsound entity.player.levelup master @p[tag=roulette_player_black]

schedule function bens_game:roulette/stop 1t