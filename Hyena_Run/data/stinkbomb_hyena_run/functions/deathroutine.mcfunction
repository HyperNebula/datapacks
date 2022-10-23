execute in minecraft:overworld as @a[x=0] run team leave @s[scores={deathCount=1..}]
execute in minecraft:overworld as @a[x=0] run team join hyena @s[scores={deathCount=1..}]
execute in minecraft:overworld as @a[x=0] run clear @s[scores={deathCount=1..},team=hyena]
execute in minecraft:overworld as @a[x=0,scores={deathCount=1..},team=hyena] run function stinkbomb_hyena_run:classes/hyena_class_setup

tag @a[scores={deathCount=1..},team=hyena] remove fighter
tag @a[scores={deathCount=1..},team=hyena] remove miner
tag @a[scores={deathCount=1..},team=hyena] remove redstoner
tag @a[scores={deathCount=1..},team=hyena] remove scout
tag @a[scores={deathCount=1..},team=hyena] remove support

execute in minecraft:overworld as @a[x=0] run tp @s[scores={deathCount=1..},team=hyena] 39.6 -20 50.4
execute in minecraft:overworld as @a[x=0] run spawnpoint @s[scores={deathCount=1..},team=hyena] 39 -20 50
scoreboard players set @a[scores={deathCount=1..},team=hyena] deathCount 0