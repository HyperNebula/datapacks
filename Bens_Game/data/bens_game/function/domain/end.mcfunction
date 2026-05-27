

#remove dome
execute as @a[tag=domain_user] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:tinted_glass

#teleport back to marker (if alive)/remove marker and tag
execute as @a[x=  ____ , y=  _______ , z=  _______ , dx=20, dy=10, dz=20, tag=domain_target] run tp @e[name=target_marker,limit=1]
execute as @a[tag=domain_target] run kill @e[type=armor_stand,name=target_marker, distance=..3]
execute as @a[tag=domain_target] run tag @s remove domain_target

#teleport back to marker/remove marker and tag
execute as @a[x=  ____ , y=  _______ , z=  _______ , dx=20, dy=10, dz=20, tag=domain_user] run tp @e[name=user_marker,limit=1]
execute as @a[tag=domain_user] run kill @e[type=armor_stand,name=user_marker, distance=..3]
execute as @a[tag=domain_user] run tag @s remove domain_user
