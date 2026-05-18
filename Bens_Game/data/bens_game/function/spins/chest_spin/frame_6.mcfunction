execute at @e[type=armor_stand,name=chestSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:leather_chestplate",count:1},{Slot:1b,id:"minecraft:copper_chestplate",count:1},{Slot:2b,id:"minecraft:netherite_chestplate",count:1}]}

schedule function bens_game:spins/chest_spin/frame_7 4t
