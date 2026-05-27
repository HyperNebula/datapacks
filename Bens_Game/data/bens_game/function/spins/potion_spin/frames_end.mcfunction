execute at @e[type=armor_stand,name=potionSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=potionSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:potion_loottable
execute at @e[type=armor_stand,name=potionSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=potionSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=potionSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[type=armor_stand,name=potionSlot] run item replace entity @p contents from block ~ ~1 ~ container.0
