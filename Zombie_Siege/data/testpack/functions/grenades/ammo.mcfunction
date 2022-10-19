execute as @a store success score @s ammoclear run clear @s minecraft:conduit{display:{Name:"{\"text\":\"Ammo\"}",Lore:["You should not see this!"]},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
execute as @a[scores={ammoclear=1},tag=gluser] run give @s minecraft:gunpowder 6
execute as @a[scores={ammoclear=1},tag=mluser] run give @s minecraft:coal 4
execute as @a[scores={ammoclear=1},tag=gunuser] run give @s minecraft:iron_nugget 16