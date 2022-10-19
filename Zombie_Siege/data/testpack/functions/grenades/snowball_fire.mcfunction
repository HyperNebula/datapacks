execute at @e[type=snowball,scores={type=2}] run kill @e[type=minecraft:area_effect_cloud,tag=tracker2,distance=..2]
execute at @e[type=minecraft:area_effect_cloud,tag=tracker2] run summon minecraft:creeper ~ ~-1 ~ {Fuse:0}
execute at @e[type=minecraft:area_effect_cloud,tag=tracker2] run fill ~3 ~-3 ~3 ~-3 ~3 ~-3 minecraft:fire replace minecraft:air
kill @e[type=minecraft:area_effect_cloud,tag=tracker2]
execute at @e[type=snowball,scores={type=2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[tracker2]}