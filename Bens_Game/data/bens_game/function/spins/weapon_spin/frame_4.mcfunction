execute at @e[type=armor_stand,name=weaponSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:stone_sword",count:1},{Slot:1b,id:"minecraft:diamond_sword",count:1},{Slot:2b,id:"minecraft:wooden_sword",count:1}]}

execute at @e[type=armor_stand,name=weaponSlot] run fill ~1 ~ ~ ~1 ~ ~ lever[powered=false,facing=east] replace minecraft:lever
execute at @e[type=armor_stand,name=weaponSlot] run fill ~-1 ~ ~ ~-1 ~ ~ lever[powered=false,facing=west] replace minecraft:lever

schedule function bens_game:spins/weapon_spin/frame_5 4t
