say effect
execute at @e[name=domain] run particle sweep_attack ~ ~-5 ~ 10 10 10 5 500 normal

execute as @e[x=-12,y=-30,z=-97,dx=21,dy=14,dz=21,tag=domain_target] run damage @s 1 magic

execute as @e[x=-12,y=-30,z=-97,dx=21,dy=14,dz=21,tag=domain_target] run schedule function bens_game:domain/effects 10t append