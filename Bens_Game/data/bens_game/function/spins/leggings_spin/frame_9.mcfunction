execute at @e[type=armor_stand,name=leggingsSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:diamond_leggings",count:1},{Slot:1b,id:"minecraft:chainmail_leggings",count:1},{Slot:2b,id:"minecraft:iron_leggings",count:1}]}

schedule function bens_game:spins/leggings_spin/frame_10 4t
