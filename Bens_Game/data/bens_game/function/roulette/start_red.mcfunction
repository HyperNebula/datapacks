
execute positioned X Y Z run execute as @p[limit=1] run tag @s add roulette_player_red


execute as @e[tag=roulette_player_red] run clear @p minecraft:iron_nugget 1

execute at @e[type=armor_stand,name=red] run playsound minecraft:entity.minecart.riding master @a[distance=..10] ~ ~ ~ 1 1


schedule function bens_game:roulette/frame_2 2t