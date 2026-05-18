execute at @e[type=armor_stand,name=leggingsSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:chainmail_leggings",count:1},{Slot:1b,id:"minecraft:diamond_leggings",count:1},{Slot:2b,id:"minecraft:leather_leggings",count:1}]}

execute at @e[type=armor_stand,name=leggingsSlot] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever
execute at @e[type=armor_stand,name=leggingsSlot] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever
execute at @e[type=armor_stand,name=leggingsSlot] run fill ~ ~ ~1 ~ ~ ~1 lever[powered=false,facing=south] replace minecraft:lever
execute at @e[type=armor_stand,name=leggingsSlot] run fill ~ ~ ~-1 ~ ~ ~-1 lever[powered=false,facing=north] replace minecraft:lever

schedule function bens_game:spins/leggings_spin/frame_5 4t
