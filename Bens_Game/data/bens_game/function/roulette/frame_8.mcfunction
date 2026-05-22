
execute at @e[type=armor_stand,name=red] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="red",type=armor_stand] armor.chest with leather_chestplate[dyed_color=1908001] 1

execute at @e[type=armor_stand,name=black] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="black",type=armor_stand] armor.chest with leather_chestplate[dyed_color=11546150] 1


#give the black armor stands an item from the roulette loot table (49% quartz_block(ball), 49% nothing, 2% green_concrete)
execute at @e[type=armor_stand,name=black] run loot replace entity @e[limit=1,sort=nearest,name=black,type=armor_stand] weapon.mainhand 1 loot bens_game:roulette_loottable


#run black win if black has the ball
execute as @e[type=armor_stand, name=black, limit=1] if entity @s[name=black, nbt={HandItems:[{id:"minecraft:quartz_block"}]}] run schedule function bens_game:roulette/black_win 1t


#if the stands are holding green concrete run green_win
execute as @e[type=armor_stand, name=black, limit=1] if entity @s[name=black, nbt={HandItems:[{id:"minecraft:green_concrete"}]}] run schedule function bens_game:roulette/green_win 1t


#run red win if black doesn't have the ball
execute as @e[type=armor_stand, name=black, limit=1] if entity @s[name=black, nbt={HandItems:[{id:"minecraft:quartz_block"}]}] run schedule function bens_game:roulette/red_win 1t



schedule function bens_game:roulette/stop 2t