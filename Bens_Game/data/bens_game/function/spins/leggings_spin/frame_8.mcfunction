execute at @e[type=armor_stand,name=leggingsSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:netherite_leggings",count:1},{Slot:1b,id:"minecraft:golden_leggings",count:1},{Slot:2b,id:"minecraft:diamond_leggings",count:1}]}

schedule function bens_game:spins/leggings_spin/frame_9 4t
