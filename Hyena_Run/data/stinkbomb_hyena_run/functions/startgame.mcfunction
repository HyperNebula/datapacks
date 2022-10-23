function stinkbomb_hyena_run:refill

function stinkbomb_hyena_run:foodspawn/mesacorner
function stinkbomb_hyena_run:foodspawn/housecorner
function stinkbomb_hyena_run:foodspawn/swampcorner
function stinkbomb_hyena_run:foodspawn/center
function stinkbomb_hyena_run:foodspawn/hyenatnt

function stinkbomb_hyena_run:testendgame

execute in minecraft:the_end as @a[x=0,team=cat] in minecraft:overworld run tp @s 0 -32 0
gamemode survival @a[team=cat]

schedule function stinkbomb_hyena_run:starthyena 30s