execute as @p[tag=roulette_player_black] run title @s title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}
execute as @p[tag=roulette_player_red] run title @s title {"bold":true,"color":"dark_green","shadow_color":-22016,"text":"GREEN WINS!"}

playsound entity.ender_dragon.growl master @p[tag=roulette_player_red]
playsound entity.ender_dragon.growl master @p[tag=roulette_player_black]

schedule function bens_game:roulette/stop 1t