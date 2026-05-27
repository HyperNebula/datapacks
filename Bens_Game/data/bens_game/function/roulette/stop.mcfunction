execute at @e[type=armor_stand,name=red] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="red",type=armor_stand] armor.chest with leather_chestplate[dyed_color=11546150] 1

execute at @e[type=armor_stand,name=black] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="black",type=armor_stand] armor.chest with leather_chestplate[dyed_color=1908001] 1


tag @a remove roulette_player_black_gold
tag @a remove roulette_player_black_iron
tag @a remove roulette_player_black_copper

tag @a remove roulette_player_red_gold
tag @a remove roulette_player_red_iron
tag @a remove roulette_player_red_copper

tag @e[name=roulette_marker] remove running
