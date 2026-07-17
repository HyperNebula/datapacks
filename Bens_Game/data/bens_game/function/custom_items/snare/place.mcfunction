advancement revoke @s only bens_game:snare

execute as @e[type=item_frame,tag=snare,sort=nearest,limit=1] run data merge entity @s {Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"bens_game:snare"}}}
execute store result score #this timestamp run time query gametime
execute as @e[type=item_frame,tag=snare,sort=nearest,limit=1] run scoreboard players operation @s timestamp = #this timestamp
execute as @e[type=item_frame,tag=snare,sort=nearest,limit=1] run scoreboard players add @s timestamp 60
