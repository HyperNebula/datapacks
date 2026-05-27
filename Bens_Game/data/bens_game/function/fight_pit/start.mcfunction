
# add scoreboard to track when a player dies
scoreboard objectives add deaths playerDeaths

#TP players into arena
tp @p[tag=fighter_red] X Y Z
tp @p[tag=fighter_black] X Y Z

#clear player inventories (should have been saved in join function)
clear [tag=fighter_red]
clear [tag=fighter_black]
