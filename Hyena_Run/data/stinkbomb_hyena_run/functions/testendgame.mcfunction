schedule function stinkbomb_hyena_run:testendgame 2s

execute store result score players catCount run team list cat
execute if score players catCount matches 1 run function stinkbomb_hyena_run:stopgame
execute if score players catCount matches 0 run function stinkbomb_hyena_run:stopgame