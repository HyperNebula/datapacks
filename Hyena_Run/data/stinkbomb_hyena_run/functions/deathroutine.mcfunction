team leave @a[scores={deathCount=1..}]
team join hyena @a[scores={deathCount=1..}]
clear @a[scores={deathCount=1..},team=hyena]
execute as @a[scores={deathCount=1..},team=hyena] run function stinkbomb_hyena_run:classes/hyena_class_setup

tag @a[scores={deathCount=1..},team=hyena] remove fighter
tag @a[scores={deathCount=1..},team=hyena] remove miner
tag @a[scores={deathCount=1..},team=hyena] remove redstoner
tag @a[scores={deathCount=1..},team=hyena] remove scout
tag @a[scores={deathCount=1..},team=hyena] remove support

tp @a[scores={deathCount=1..},team=hyena] 39.6 -20 50.4
spawnpoint @a[scores={deathCount=1..},team=hyena] 39 -20 50
scoreboard players set @a[scores={deathCount=1..},team=hyena] deathCount 0