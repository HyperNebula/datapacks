execute at @e[type=armor_stand,name=potionSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:strong_leaping",count:1},{Slot:1b,id:"minecraft:strong_healing",count:1},{Slot:2b,id:"minecraft:strong_swiftness",count:1}]}

execute at @e[type=armor_stand,name=potionSlot] run fill ~ ~ ~1 ~ ~ ~1 lever[powered=false,facing=south] replace minecraft:lever
execute at @e[type=armor_stand,name=potionSlot] run fill ~ ~ ~-1 ~ ~ ~-1 lever[powered=false,facing=north] replace minecraft:lever
execute at @e[type=armor_stand,name=potionSlot] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever
execute at @e[type=armor_stand,name=potionSlot] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever

tag @e[type=armor_stand,name=potionSlot] remove running
