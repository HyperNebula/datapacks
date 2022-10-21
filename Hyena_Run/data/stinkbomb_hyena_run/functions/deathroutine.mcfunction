team leave @a[scores={deathCount=1..}]
team join hyena @a[scores={deathCount=1..}]
execute as @a[scores={deathCount=1..},team=hyena] run function stinkbomb_hyena_run:classes/hyena_class_setup
tp @a[scores={deathCount=1..},team=hyena] 39.6 -20 50.4
spawnpoint @a[scores={deathCount=1..},team=hyena] 39 -20 50
scoreboard players set @a[scores={deathCount=1..},team=hyena] deathCount 0