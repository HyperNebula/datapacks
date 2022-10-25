function stinkbomb_hyena_run:deathroutine
function stinkbomb_hyena_run:classselection
function stinkbomb_hyena_run:supporttp

effect give @a[team=cat] hunger 2 1 true
effect give @a[team=cat] night_vision 10 0 true
#effect give @a[team=hyena] mining_fatigue 2 1 true
#effect give @a[team=hyena] speed 2 1 true
effect give @a[team=hyena] resistance 2 9 true
effect give @a[team=hyena] saturation 2 9 true

execute as @a[nbt={ActiveEffects:[{Id:25}]}] run effect give @s minecraft:jump_boost 5 255 true

execute in minecraft:the_end as @a[x=0] run effect give @s resistance 1 9 true
execute in minecraft:the_end as @a[x=0] run effect give @s saturation 1 9 true

team join hyena @e[type=minecraft:firework_rocket]

execute in minecraft:the_end run tp @a[tag=!synced] 0 67 0 facing 0.50 67 -4.00
gamemode adventure @a[tag=!synced]
execute in minecraft:the_end as @a[x=0,tag=!synced] run tag @s add synced