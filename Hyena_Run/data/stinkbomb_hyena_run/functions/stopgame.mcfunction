gamemode adventure @a[team=!]

clear @a
execute in minecraft:the_end run tp @a 0 100 0

execute as @a[team=cat] run say I won

team leave @a
tag @a remove miner
tag @a remove redstoner
tag @a remove scout
tag @a remove fighter
tag @a remove support

schedule clear stinkbomb_hyena_run:testendgame

schedule clear stinkbomb_hyena_run:foodspawn/mesacorner
schedule clear stinkbomb_hyena_run:foodspawn/housecorner
schedule clear stinkbomb_hyena_run:foodspawn/swampcorner
schedule clear stinkbomb_hyena_run:foodspawn/center
schedule clear stinkbomb_hyena_run:foodspawn/hyenatnt