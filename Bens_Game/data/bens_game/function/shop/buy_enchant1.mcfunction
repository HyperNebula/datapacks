advancement revoke @s only bens_game:shop/interact_enchant1
execute store result score @s held_amount run data get entity @s SelectedItem.count
execute if items entity @s weapon.mainhand minecraft:iron_nugget if score @s held_amount matches 3.. run function bens_game:shop/process_buy_enchant1
execute unless items entity @s weapon.mainhand minecraft:iron_nugget run playsound entity.villager.no player @s ~ ~ ~
execute if items entity @s weapon.mainhand minecraft:iron_nugget unless score @s held_amount matches 3.. run playsound entity.villager.no player @s ~ ~ ~
