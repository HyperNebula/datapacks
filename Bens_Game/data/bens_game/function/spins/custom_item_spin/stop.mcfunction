execute at @e[type=armor_stand,name=custom_itemSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1},{Slot:1b,id:"minecraft:item_frame",count:1},{Slot:2b,id:"minecraft:snowball",count:1}]}

execute at @e[type=armor_stand,name=custom_itemSlot] run fill ~ ~ ~1 ~ ~ ~1 lever[powered=false,facing=south] replace minecraft:lever
execute at @e[type=armor_stand,name=custom_itemSlot] run fill ~ ~ ~-1 ~ ~ ~-1 lever[powered=false,facing=north] replace minecraft:lever
execute at @e[type=armor_stand,name=custom_itemSlot] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever
execute at @e[type=armor_stand,name=custom_itemSlot] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever

tag @e[type=armor_stand,name=custom_itemSlot] remove running
