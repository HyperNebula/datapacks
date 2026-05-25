

execute as @e[name=roulette,limit=1] if entity @p[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] run function bens_game:roulette/start_black