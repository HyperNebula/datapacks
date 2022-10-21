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

#function stinkbomb_hyena_run:testendgame

execute in minecraft:the_end as @a[x=0] run effect give @s instant_health 1 20 true

execute in minecraft:the_end as @a[x=0,team=hyena] run tp @s 39.6 -20 50.4
execute in minecraft:the_end as @a[x=0,team=cat] run tp @s 0 -32 0

gamemode survival @a[team=!]