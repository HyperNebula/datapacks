execute at @e[type=armor_stand,name=blockSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=blockSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:blocks_loottable
execute at @e[type=armor_stand,name=blockSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=blockSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=blockSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[type=armor_stand,name=blockSlot] run item replace entity @p hotbar.8 from block ~ ~1 ~ container.0
