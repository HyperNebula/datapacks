summon armor_stand ~ ~1.62 ~ {Tags:[toThrow],Invulnerable:1b,Invisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{},{},{}]}
tp @e[tag=toThrow,tag=!thrown] @s
execute as @e[tag=toThrow,tag=!thrown] at @s run tp @s ~ ~1.62 ~
execute as @e[tag=toThrow,tag=!thrown] run function testpack:grenades/launcher_move
