execute at @e[type=armor_stand,name=500Slot1,limit=1,tag=!running] as @p store result score @s held_amount run data get entity @s SelectedItem.count

execute at @e[type=armor_stand,name=500Slot1,limit=1,tag=!running] as @p if items entity @s weapon.mainhand minecraft:gold_nugget if score @s held_amount matches 1.. run function bens_game:slots/500chip_1/start_run
