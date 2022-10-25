execute as @a[team=hyena] run function stinkbomb_hyena_run:classes/hyena_class_setup
execute as @a[tag=miner] run function stinkbomb_hyena_run:classes/miner_class_setup
execute as @a[tag=redstoner] run function stinkbomb_hyena_run:classes/redstoner_class_setup
execute as @a[tag=scout] run function stinkbomb_hyena_run:classes/scout_class_setup
execute as @a[tag=fighter] run function stinkbomb_hyena_run:classes/fighter_class_setup
execute as @a[tag=support] run function stinkbomb_hyena_run:classes/support_class_setup

effect give @a[team=cat,tag=!redstoner] glowing 10 0 true

schedule function stinkbomb_hyena_run:refill 120s