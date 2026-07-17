tag @s add blink_target

execute on attacker run tp @s ^ ^ ^-2
execute on attacker at @s run tp @s ~ ~ ~ facing entity @e[tag=blink_target,limit=1] feet
execute on attacker at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

tag @s remove blink_target
