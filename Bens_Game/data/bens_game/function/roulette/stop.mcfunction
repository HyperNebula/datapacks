
execute at @e[type=armor_stand,name=red] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="red",type=armor_stand] armor.chest with leather_chestplate[dyed_color=11546150] 1

execute at @e[type=armor_stand,name=black] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="black",type=armor_stand] armor.chest with leather_chestplate[dyed_color=1908001] 1


execute at @e[type=armor_stand,name=black] run data merge entity @e[type=armor_stand,name=black] {HandItems:[{},{}]}

execute as @p[tag=roulette_player_black] run tag @s remove roulette_player_black
execute as @p[tag=roulette_player_red] run tag @s remove roulette_player_red
