execute at @e[type=armor_stand,name=weaponSlot] run data merge block ~ ~1 ~ {Items:[]}

execute at @e[type=armor_stand,name=weaponSlot] run loot replace block ~ ~1 ~ container.0 loot bens_game:weapon_loottable
execute at @e[type=armor_stand,name=weaponSlot] run item replace block ~ ~1 ~ container.1 from block ~ ~1 ~ container.0
execute at @e[type=armor_stand,name=weaponSlot] run item replace block ~ ~1 ~ container.2 from block ~ ~1 ~ container.0


execute at @e[type=armor_stand,name=weaponSlot] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1

summon item 0 0 0 {Tags:["temp_give_weapon_item"], Item:{id:"minecraft:stone", count:1}}
execute at @e[type=armor_stand,name=weaponSlot] run data modify entity @e[type=item,tag=temp_give_weapon_item,limit=1] Item set from block ~ ~1 ~ Items[{Slot:0b}]
execute at @e[type=armor_stand,name=weaponSlot] run tp @e[type=item,tag=temp_give_weapon_item,limit=1] @e[tag=weapon_give,limit=1]

tag @a remove weapon_give
