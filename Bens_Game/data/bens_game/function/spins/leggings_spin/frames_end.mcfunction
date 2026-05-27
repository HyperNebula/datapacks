execute at @e[type=armor_stand,name=leggingsSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=leggingsSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:leggings_loottable
execute at @e[type=armor_stand,name=leggingsSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=leggingsSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=leggingsSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[type=armor_stand,name=leggingsSlot] run item replace entity @p armor.legs from block ~ ~1 ~ container.0
