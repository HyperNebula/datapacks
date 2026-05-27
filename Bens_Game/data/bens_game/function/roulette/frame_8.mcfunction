#rotate
execute at @e[type=armor_stand,name=red] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="red",type=armor_stand] armor.chest with leather_chestplate[dyed_color=1908001] 1
execute at @e[type=armor_stand,name=black] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="black",type=armor_stand] armor.chest with leather_chestplate[dyed_color=11546150] 1


#give the black armor stands an item from the roulette loot table (49% quartz_block(ball), 49% nothing, 2% green_concrete)
loot replace entity @e[name=roulette] weapon.mainhand 1 loot bens_game:roulette_loottable


#run black win if black has the ball
execute as @e[type=armor_stand,name=roulette] if items entity @s weapon.mainhand minecraft:quartz_block run function bens_game:roulette/black_win


#if the stands are holding green concrete run green_win
execute as @e[type=armor_stand,name=roulette] if items entity @s weapon.mainhand minecraft:green_concrete run function bens_game:roulette/green_win

#run red win if black doesn't have the ball
execute as @e[type=armor_stand,name=roulette] unless items entity @s weapon.mainhand minecraft:quartz_block unless items entity @s weapon.mainhand minecraft:green_concrete run function bens_game:roulette/red_win


schedule function bens_game:roulette/stop 10t
