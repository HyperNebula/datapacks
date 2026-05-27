execute at @e[name=roulette_marker,limit=1,tag=!running] as @p if entity @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] run function bens_game:roulette/start_black_iron
execute at @e[name=roulette_marker,limit=1,tag=!running] as @p if entity @s[nbt={SelectedItem:{id:"minecraft:gold_nugget"}}] run function bens_game:roulette/start_black_gold

execute at @e[name=roulette_marker,limit=1,tag=!running] as @p store result score @s held_amount run data get entity @s SelectedItem.count

execute at @e[name=roulette_marker,limit=1,tag=!running] as @p if items entity @s weapon.mainhand minecraft:copper_nugget if score @s held_amount matches 5.. run function bens_game:roulette/start_black_copper
