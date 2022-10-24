function stinkbomb_hyena_run:refill

function stinkbomb_hyena_run:foodspawn/mesacorner
function stinkbomb_hyena_run:foodspawn/housecorner
function stinkbomb_hyena_run:foodspawn/swampcorner
function stinkbomb_hyena_run:foodspawn/center
function stinkbomb_hyena_run:foodspawn/hyenatnt

function stinkbomb_hyena_run:testendgame

execute in minecraft:the_end as @a[x=0,team=cat] run effect give @s minecraft:hunger 4 200 true
execute in minecraft:the_end as @a[x=0,team=cat] in minecraft:overworld run tp @s 0 -32 0
execute in minecraft:overworld as @a[x=0,team=cat] run gamemode survival @s

execute in minecraft:the_end as @a[x=0,team=hyena] run execute in minecraft:the_nether run tp @s 0 50 0

schedule function stinkbomb_hyena_run:starthyena 30s