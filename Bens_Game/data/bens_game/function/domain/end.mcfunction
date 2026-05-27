say end

#remove dome
execute at @e[name=user_marker] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:black_concrete
execute at @e[name=user_marker] run fill ~4 ~2 ~2 ~-4 ~-2 ~-2 air replace minecraft:black_concrete
execute at @e[name=user_marker] run fill ~2 ~2 ~4 ~-2 ~-2 ~-4 air replace minecraft:black_concrete
execute at @e[name=user_marker] run fill ~2 ~4 ~2 ~-2 ~-4 ~-2 air replace minecraft:black_concrete



#teleport back to marker (if alive)/remove marker and tag
execute as @e[x=-12,y=-30,z=-97,dx=21,dy=10,dz=21,tag=domain_target] run tp @e[name=target_marker,limit=1]
execute as @e[type=armor_stand,name=target_marker] run kill @s
execute as @e[tag=domain_target] run tag @s remove domain_target

#teleport back to marker/remove marker and tag
execute as @a[x=-12,y=-30,z=-97,dx=21,dy=10,dz=21,tag=domain_user] run tp @e[name=user_marker,limit=1]
execute as @e[type=armor_stand,name=user_marker] run kill @s
#execute as @a[tag=domain_user] run tag @s remove domain_user
