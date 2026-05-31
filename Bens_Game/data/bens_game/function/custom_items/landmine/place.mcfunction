advancement revoke @s only bens_game:landmine


execute as @e[tag=landmine] run data merge entity @s[type=item_frame,tag=landmine] {Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"bens_game:landmine"}}}

schedule function bens_game:custom_items/landmine/activate 100t