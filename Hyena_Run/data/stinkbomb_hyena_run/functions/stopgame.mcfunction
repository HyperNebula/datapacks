schedule clear stinkbomb_hyena_run:testendgame
schedule clear stinkbomb_hyena_run:starthyena

schedule clear stinkbomb_hyena_run:foodspawn/mesacorner
schedule clear stinkbomb_hyena_run:foodspawn/housecorner
schedule clear stinkbomb_hyena_run:foodspawn/swampcorner
schedule clear stinkbomb_hyena_run:foodspawn/center
schedule clear stinkbomb_hyena_run:foodspawn/hyenatnt

schedule clear stinkbomb_hyena_run:refill
schedule clear stinkbomb_hyena_run:timer

gamemode adventure @a[team=!]

clear @a[team=!]
effect clear @a[team=!]
effect give @a[team=!] instant_health 1 9 true
execute in minecraft:the_end run tp @a[team=!] 0 67 0 facing 0 67 -4
execute in minecraft:the_end run spawnpoint @a 0 67 0

title @a title [{"selector":"@a[team=cat]"},{"text":" won the game!","color":"dark_green"}]

team empty cat
team empty hyena
tag @a remove miner
tag @a remove redstoner
tag @a remove scout
tag @a remove fighter
tag @a remove support

setblock -74 -64 -75 minecraft:redstone_block destroy
kill @e[type=item]
kill @e[type=minecraft:axolotl]
kill @e[type=minecraft:warden]
kill @e[type=minecraft:boat]