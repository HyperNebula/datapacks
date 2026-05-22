/execute if block X Y Z minecraft:stone_button[powered=true] run ____________________

execute positioned X Y Z run execute as @p if entity @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] run function bens_game:roulette/start
