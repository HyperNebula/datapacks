schedule clear stinkbomb_hyena_run:testendgame
schedule clear stinkbomb_hyena_run:starthyena

schedule clear stinkbomb_hyena_run:foodspawn/mesacorner
schedule clear stinkbomb_hyena_run:foodspawn/housecorner
schedule clear stinkbomb_hyena_run:foodspawn/swampcorner
schedule clear stinkbomb_hyena_run:foodspawn/center
schedule clear stinkbomb_hyena_run:foodspawn/hyenatnt

schedule clear stinkbomb_hyena_run:refill

gamemode adventure @a[team=!]

clear @a[team=!]
execute in minecraft:the_end run tp @a[team=!] 0 67 0
spawnpoint @a 0 67 0

execute as @a[team=cat] run say I won

team leave @a
tag @a remove miner
tag @a remove redstoner
tag @a remove scout
tag @a remove fighter
tag @a remove support

setblock -74 -64 -75 minecraft:redstone_block destroy
kill @e[type=item]
kill @e[type=minecraft:axolotl]