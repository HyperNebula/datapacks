execute at @e[type=armor_stand,name=chestSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:diamond_chestplate",count:1},{Slot:1b,id:"minecraft:diamond_chestplate",count:1},{Slot:2b,id:"minecraft:diamond_chestplate",count:1}]}
execute at @e[type=armor_stand,name=chestSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

schedule function bens_game:spins/chest_spin/stop 40t
