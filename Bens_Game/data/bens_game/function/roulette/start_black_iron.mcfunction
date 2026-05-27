execute as @e[name=roulette_marker,limit=1] run tag @p add roulette_player_black_iron
tag @e[name=roulette_marker] add running

execute as @e[name=roulette_marker] run clear @p[tag=roulette_player_black_iron] minecraft:iron_nugget 1

execute at @e[type=armor_stand,name=roulette] run playsound minecraft:entity.minecart.riding master @a[distance=..10] ~ ~ ~ .5 1


schedule function bens_game:roulette/frame_2 8t
