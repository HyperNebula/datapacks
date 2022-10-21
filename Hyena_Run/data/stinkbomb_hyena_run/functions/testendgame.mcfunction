execute store result score players catCount run team list cat
execute if score players catCount matches 1 run function stinkbomb_hyena_run:stopgame

schedule function stinkbomb_hyena_run:testendgame 1s