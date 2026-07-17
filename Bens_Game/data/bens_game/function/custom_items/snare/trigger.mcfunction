# Apply slowness and mining fatigue to root the target in place
execute as @a[tag=snare_target,limit=1,sort=nearest] run effect give @s minecraft:slowness 5 255
execute as @a[tag=snare_target,limit=1,sort=nearest] run effect give @s minecraft:mining_fatigue 5 2
execute as @a[tag=snare_target,limit=1,sort=nearest] run attribute @s minecraft:gravity base set 2.0
execute as @a[tag=snare_target,limit=1,sort=nearest] run scoreboard players set @s snare_timer 100
execute as @a[tag=snare_target,limit=1,sort=nearest] at @s run playsound entity.spider.ambient hostile @a ~ ~ ~ 1 0.5
execute as @a[tag=snare_target,limit=1,sort=nearest] at @s run particle block{block_state:"minecraft:cobweb"} ~ ~1 ~ 0.3 0.5 0.3 0 20
execute as @a[tag=snare_target,limit=1,sort=nearest] run title @s actionbar {"text":"You've been snared!","color":"red","bold":true}
# Destroy the snare
kill @s
