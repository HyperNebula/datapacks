execute at @e[type=armor_stand,name=blockSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=blockSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:blocks_loottable
execute at @e[type=armor_stand,name=blockSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=blockSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=blockSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

summon item 0 0 0 {Tags:["temp_give_block_item"], Item:{id:"minecraft:stone", count:1},PickupDelay:0s}
execute at @e[type=armor_stand,name=blockSlot] run data modify entity @e[type=item,tag=temp_give_block_item,limit=1] Item set from block ~ ~1 ~ Items[{Slot:0b}]
execute at @e[type=armor_stand,name=blockSlot] run tp @e[type=item,tag=temp_give_block_item,limit=1] @p[tag=block_give]

tag @a remove block_give
