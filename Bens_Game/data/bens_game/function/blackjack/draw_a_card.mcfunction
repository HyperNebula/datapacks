
execute as @e[name=blackjack] run playsound item.book.page_turn master @p

execute as @e[type=armor_stand,name=blackjack] run loot replace entity @s[name=blackjack,type=armor_stand] weapon.mainhand 1 loot bens_game:blackjack_loottable


#a
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_a"}]}] run schedule function bens_game:roulette/draw/h_a

#2
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_2"}]}] run schedule function bens_game:roulette/draw/h_2

#3
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_3"}]}] run schedule function bens_game:roulette/draw/h_3

#4
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_4"}]}] run schedule function bens_game:roulette/draw/h_4

#5
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_5"}]}] run schedule function bens_game:roulette/draw/h_5

#6
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_6"}]}] run schedule function bens_game:roulette/draw/h_6

#7
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_7"}]}] run schedule function bens_game:roulette/draw/h_7

#8
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_8"}]}] run schedule function bens_game:roulette/draw/h_8

#9
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_9"}]}] run schedule function bens_game:roulette/draw/h_9

#10
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_10"}]}] run schedule function bens_game:roulette/draw/h_10

#j
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_j"}]}] run schedule function bens_game:roulette/draw/h_j

#q
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_q"}]}] run schedule function bens_game:roulette/draw/h_q

#k
execute as @e[type=armor_stand, name=blackjack] if entity @s[name=blackjack, nbt={HandItems:[{id:"bens_game:h_k"}]}] run schedule function bens_game:roulette/draw/h_k