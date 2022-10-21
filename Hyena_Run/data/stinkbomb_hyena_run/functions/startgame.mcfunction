execute as @a[team=hyena] run function stinkbomb_hyena_run:classes/hyena_class_setup
execute as @a[tag=miner] run function stinkbomb_hyena_run:classes/miner_class_setup
execute as @a[tag=redstoner] run function stinkbomb_hyena_run:classes/redstoner_class_setup
execute as @a[tag=scout] run function stinkbomb_hyena_run:classes/scout_class_setup
execute as @a[tag=fighter] run function stinkbomb_hyena_run:classes/fighter_class_setup
execute as @a[tag=support] run function stinkbomb_hyena_run:classes/support_class_setup

function stinkbomb_hyena_run:foodspawn/mesacorner
function stinkbomb_hyena_run:foodspawn/housecorner
function stinkbomb_hyena_run:foodspawn/swampcorner
function stinkbomb_hyena_run:foodspawn/center
function stinkbomb_hyena_run:foodspawn/hyenatnt

tp @a[team=hyena] 39.6 -20 50.4
tp @a[team=cat] 0 -32 0