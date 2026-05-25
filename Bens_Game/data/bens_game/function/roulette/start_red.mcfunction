
execute as @e[name=roulette,limit=1] run tag @p add roulette_player_red


execute as @e[tag=roulette_player_red] run clear @p minecraft:iron_nugget 1

execute at @e[type=armor_stand,name=roulette] run playsound minecraft:entity.minecart.riding master @a[distance=..10] ~ ~ ~ .5 1


schedule function bens_game:roulette/frame_2 8t