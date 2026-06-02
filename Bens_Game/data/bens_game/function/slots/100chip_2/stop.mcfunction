execute at @e[type=armor_stand,name=100Slot2] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:iron_nugget",count:1},{Slot:1b,id:"minecraft:copper_nugget",count:1},{Slot:2b,id:"minecraft:gold_nugget",count:1}]}

execute at @e[type=armor_stand,name=100Slot2] run fill ~ ~ ~1 ~ ~ ~1 lever[powered=false,facing=south] replace minecraft:lever destroy
execute at @e[type=armor_stand,name=100Slot2] run fill ~ ~ ~-1 ~ ~ ~-1 lever[powered=false,facing=north] replace minecraft:lever destroy
execute at @e[type=armor_stand,name=100Slot2] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever destroy 
execute at @e[type=armor_stand,name=100Slot2] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever destroy

tag @e[type=armor_stand,name=100Slot2] remove running
