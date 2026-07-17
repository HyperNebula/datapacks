
execute if entity @n[type=marker,tag=attacker] run execute at @s on attacker run tp @s ~ ~ ~
execute if entity @n[type=marker,tag=attacker] run tp @n[type=marker,tag=attacker]
kill @n[type=marker,tag=attacker]