clear @s iron_nugget 3
playsound entity.experience_orb.pickup player @s ~ ~ ~
execute at @s run summon item ~ ~ ~ {Tags:["shop_drop"],PickupDelay:0s,Item:{id:"minecraft:stone", count:1}}
execute at @s run data modify entity @e[type=item,tag=shop_drop,limit=1] Item set from entity @e[type=item_frame,name=Enchant1,limit=1] Item
execute at @s run tag @e[type=item,tag=shop_drop] remove shop_drop
function bens_game:shop/restock
