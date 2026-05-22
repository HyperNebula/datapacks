

#display outcome
title @p title {"bold":true,"color":"dark_red","text":"Dealer Busts!"}
playsound entity.firework_rocket.twinkle_far master @p[tags=blackjack_player]
give @p[tag=blackjack_player] minecraft:iron_nugget 1

schedule function bens_game:blackjack/stop