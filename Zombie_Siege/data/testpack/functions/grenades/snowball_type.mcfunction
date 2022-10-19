scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"text\":\"Explosive Grenade\",\"obfuscated\":\"false\"}",Lore:["Blows up on contact"]},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] type 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"text\":\"Fire Grenade\",\"obfuscated\":\"false\"}",Lore:["Lights fire on contact"]},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] type 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"text\":\"Water Grenade\",\"obfuscated\":\"false\"}",Lore:["Creates a splash of water"]},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] type 3
scoreboard players add @e[type=minecraft:snowball] lifetime 1
execute at @e[type=minecraft:snowball,scores={lifetime=1}] at @a[scores={throw=1}] run scoreboard players operation @e[type=minecraft:snowball,scores={lifetime=1}] type = @a[scores={throw=1}] type
scoreboard players reset @a[scores={throw=1..}] throw
