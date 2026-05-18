execute at @e[type=armor_stand,name=helmetSlot] run data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:diamond_helmet",count:1},{Slot:1b,id:"minecraft:diamond_helmet",count:1},{Slot:2b,id:"minecraft:diamond_helmet",count:1}]}
execute at @e[type=armor_stand,name=helmetSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

schedule function bens_game:spins/helmet_spin/stop 40t
