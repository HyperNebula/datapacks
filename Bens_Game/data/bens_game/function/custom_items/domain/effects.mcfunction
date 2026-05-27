
execute as @a[tag=domain_user] particle sweep_attack ~-10 ~ ~-10 20 20 20 5 150 normal

execute as @a[x=  ____ , y=  _______ , z=  _______ , dx=20, dy=10, dz=20, tag=domain_target] run damage @s 1 magic by @e[name=domain]

execute as @a[x=  ____ , y=  _______ , z=  _______ , dx=20, dy=10, dz=20, tag=domain_target] run schedule function bens_game:domain/effects 20t