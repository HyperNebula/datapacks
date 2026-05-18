execute at @e[type=armor_stand,name=weaponSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:diamond_sword",count:1},{Slot:1b,id:"minecraft:iron_sword",count:1},{Slot:2b,id:"minecraft:diamond_sword",count:1}]}

schedule function bens_game:spins/weapon_spin/frame_11 4t
