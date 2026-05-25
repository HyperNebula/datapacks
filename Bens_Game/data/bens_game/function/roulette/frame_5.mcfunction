
execute at @e[type=armor_stand,name=roulette] run playsound minecraft:entity.minecart.riding master @a[distance=..10] ~ ~ ~ .5 1

execute at @e[type=armor_stand,name=red] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="red",type=armor_stand] armor.chest with leather_chestplate[dyed_color=11546150] 1

execute at @e[type=armor_stand,name=black] run item replace entity @e[limit=2,sort=nearest,distance=..4,name="black",type=armor_stand] armor.chest with leather_chestplate[dyed_color=1908001] 1

schedule function bens_game:roulette/frame_6 12t