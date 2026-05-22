#clear dealer hand
execute at @e[type=armor_stand,name=blackjack] run data merge entity @e[type=armor_stand,name=blackjack] {HandItems:[{},{}]}


#remove tags
execute as @e[name=blackjack] run tag @s remove playing
execute as @p[tag=blackjack_player] run tag @s remove blackjack_player


#reset score counters
scoreboard players reset @a blackjack
scoreboard objectives add blackjack

