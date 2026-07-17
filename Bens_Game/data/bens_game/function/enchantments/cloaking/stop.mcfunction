tag @s remove cloaking
effect clear @s minecraft:invisibility
scoreboard players set @s cloak_cd 200

playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1

scoreboard players operation #current cloak_id = @s cloak_id
execute as @e[tag=cloaking_stand] if score @s cloak_id = #current cloak_id run tag @s add my_stand

item replace entity @s armor.head from entity @e[tag=my_stand,limit=1] armor.head
item replace entity @s armor.chest from entity @e[tag=my_stand,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[tag=my_stand,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=my_stand,limit=1] armor.feet

kill @e[tag=my_stand]
