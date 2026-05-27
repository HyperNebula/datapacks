execute at @e[type=armor_stand,name=helmetSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=helmetSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:helmet_loottable
execute at @e[type=armor_stand,name=helmetSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=helmetSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=helmetSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[type=armor_stand,name=helmetSlot] run item replace entity @p armor.head from block ~ ~1 ~ container.0
