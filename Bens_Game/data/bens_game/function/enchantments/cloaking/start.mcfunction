execute if entity @s[tag=cloaking] run return 0
execute if score @s cloak_cd matches 1.. run return 0
tag @s add cloaking
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 1 1

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["cloaking_stand","new_stand"]}

execute as @e[tag=new_stand] run scoreboard players operation @s cloak_id = @p[tag=cloaking,distance=..0.1,limit=1] cloak_id

execute as @e[tag=new_stand] run item replace entity @s armor.head from entity @p[tag=cloaking,distance=..0.1,limit=1] armor.head
item replace entity @s armor.head with air

execute as @e[tag=new_stand] run item replace entity @s armor.chest from entity @p[tag=cloaking,distance=..0.1,limit=1] armor.chest
item replace entity @s armor.chest with air

execute as @e[tag=new_stand] run item replace entity @s armor.legs from entity @p[tag=cloaking,distance=..0.1,limit=1] armor.legs
item replace entity @s armor.legs with air

execute as @e[tag=new_stand] run item replace entity @s armor.feet from entity @p[tag=cloaking,distance=..0.1,limit=1] armor.feet
item replace entity @s armor.feet with air

tag @e[tag=new_stand] remove new_stand
