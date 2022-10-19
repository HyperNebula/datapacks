execute at @e[type=snowball,scores={type=1}] run kill @e[type=minecraft:area_effect_cloud,tag=tracker,distance=..2]
execute at @e[type=minecraft:area_effect_cloud,tag=tracker] run summon minecraft:creeper ~ ~ ~ {Fuse:0}
kill @e[type=minecraft:area_effect_cloud,tag=tracker]
execute at @e[type=snowball,scores={type=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[tracker]}