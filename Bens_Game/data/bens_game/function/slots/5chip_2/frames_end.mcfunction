execute at @e[type=armor_stand,name=5Slot2] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=5Slot2] run loot replace block ~ ~1 ~ container.0 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=5Slot2] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=5Slot2] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=5Slot2] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

summon item 0 0 0 {Tags:["temp_give_5CHIP2_item"], Item:{id:"minecraft:stone", count:1}}
execute at @e[type=armor_stand,name=5Slot2] run data modify entity @e[type=item,tag=temp_give_5CHIP2_item,limit=1] Item set from block ~ ~1 ~ Items[{Slot:0b}]
execute at @e[type=armor_stand,name=5Slot2] run tp @e[type=item,tag=temp_give_5CHIP2_item,limit=1] @p
