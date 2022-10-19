execute at @e[type=snowball,scores={type=3}] run kill @e[type=minecraft:area_effect_cloud,tag=tracker3,distance=..2]
execute at @e[type=minecraft:area_effect_cloud,tag=tracker3] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:water[level=15] replace minecraft:air
execute at @e[type=minecraft:area_effect_cloud,tag=tracker3] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:water[level=15] replace minecraft:fire
kill @e[type=minecraft:area_effect_cloud,tag=tracker3]
execute at @e[type=snowball,scores={type=3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[tracker3]}
