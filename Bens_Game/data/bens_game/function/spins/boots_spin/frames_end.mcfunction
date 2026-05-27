execute at @e[type=armor_stand,name=bootsSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=bootsSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:boots_loottable
execute at @e[type=armor_stand,name=bootsSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=bootsSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=bootsSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[type=armor_stand,name=bootsSlot] run item replace entity @p armor.feet from block ~ ~1 ~ container.0
