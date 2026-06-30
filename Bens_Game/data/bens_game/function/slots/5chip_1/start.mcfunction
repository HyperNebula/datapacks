execute at @e[type=armor_stand,name=5Slot1,limit=1,tag=!running] as @p store result score @s held_amount run data get entity @s SelectedItem.count

execute at @e[type=armor_stand,name=5Slot1,limit=1,tag=!running] as @p if items entity @s weapon.mainhand minecraft:copper_nugget if score @s held_amount matches 5.. run function bens_game:slots/5chip_1/start_run
