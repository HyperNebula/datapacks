execute at @e[type=armor_stand,name=bootsSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:netherite_boots",count:1},{Slot:1b,id:"minecraft:golden_boots",count:1},{Slot:2b,id:"minecraft:diamond_boots",count:1}]}

schedule function bens_game:spins/boots_spin/frame_9 4t
