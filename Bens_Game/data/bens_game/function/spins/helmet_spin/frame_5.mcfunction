execute at @e[type=armor_stand,name=helmetSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:diamond_helmet",count:1},{Slot:1b,id:"minecraft:leather_helmet",count:1},{Slot:2b,id:"minecraft:copper_helmet",count:1}]}

schedule function bens_game:spins/helmet_spin/frame_6 4t
