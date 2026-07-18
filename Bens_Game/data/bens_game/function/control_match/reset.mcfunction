gamemode adventure @a
worldborder set 19200
team join lobby @a

tag @a remove playing
clear @a
tp @a -10 -22 27
title @a times 20 80 20
title @a title ["",{"selector":"@s","color":"green","bold":true},{"text":" won The Game!","color":"green","bold":false}]

place template bens_game:front_door -27 -22 25

schedule function bens_game:control_match/2nd_reset 2s
schedule function bens_game:control_match/reset_map 10s
