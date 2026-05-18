execute at @e[type=armor_stand,name=helmetSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:turtle_helmet",count:1},{Slot:1b,id:"minecraft:iron_helmet",count:1},{Slot:2b,id:"minecraft:chainmail_helmet",count:1}]}

schedule function bens_game:spins/helmet_spin/frame_3 4t
