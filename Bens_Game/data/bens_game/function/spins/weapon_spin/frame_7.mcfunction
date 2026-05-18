execute at @e[type=armor_stand,name=weaponSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:copper_sword",count:1},{Slot:1b,id:"minecraft:netherite_sword",count:1},{Slot:2b,id:"minecraft:golden_sword",count:1}]}

schedule function bens_game:spins/weapon_spin/frame_8 4t
