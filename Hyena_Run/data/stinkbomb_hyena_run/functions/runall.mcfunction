function stinkbomb_hyena_run:deathroutine

effect give @a[team=cat] hunger 2 1 true
effect give @a[team=cat] night_vision 2 0 true
effect give @a[team=hyena] mining_fatigue 2 1 true
effect give @a[team=hyena] speed 2 0 true
effect give @a[team=hyena] resistance 2 9 true

execute in minecraft:the_end as @a[x=0] run effect give @s resistance 2 9 true

execute in minecraft:overworld as @a[x=0,y=252,z=0,distance=..1] run execute in minecraft:the_end run tp @s 0 67 0