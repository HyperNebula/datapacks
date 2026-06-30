execute at @e[type=armor_stand,name=500Slot2] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=500Slot2] run loot replace block ~ ~1 ~ container.0 loot bens_game:slots_outcome_loottable
execute at @e[type=armor_stand,name=500Slot2] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=500Slot2] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=500Slot2] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

execute as @p[tag=give_500chip2] run function bens_game:slots/500chip_2/determine_reward
tag @a remove give_500chip2 
