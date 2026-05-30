
scoreboard players add @s fire_staff 3

execute if entity @a[scores={fire_staff=400..}] run function bens_game:custom_items/fire_staff/blow_up

playsound block.campfire.crackle master @p ~ ~ ~ 1


execute if entity @a[scores={fire_staff=300..}] run playsound entity.item.break master @p ~ ~ ~ .2
execute if entity @a[scores={fire_staff=300..}] run particle smoke ~ ~1.5 ~ 0.1 0.1 0.1 0 5 normal

particle flame ^ ^ ^2 .5 .5 .5 0 10 normal
execute positioned ^ ^ ^2 run execute as @e[distance=..1] run damage @s 2
execute positioned ^ ^ ^2 run execute as @e[distance=..2] run data merge entity @s {Fire:100}
  

particle flame ^ ^ ^3 .5 .5 .5 0 10 normal
execute positioned ^ ^ ^3 run execute as @e[distance=..1] run damage @s 2
execute positioned ^ ^ ^3 run execute as @e[distance=..2] run data merge entity @s {Fire:100}
execute positioned ^ ^ ^3 run fill ~ ~ ~ ~ ~ ~ fire replace air

particle flame ^1 ^ ^4 .5 .5 .5 0 10 normal
particle flame ^-1 ^ ^4 .5 .5 .5 0 10 normal
particle flame ^ ^ ^4 .5 .5 .5 0 10 normal
execute positioned ^ ^ ^4 run execute as @e[distance=..1] run damage @s 2
execute positioned ^ ^ ^4 run execute as @e[distance=..2] run data merge entity @s {Fire:100}
execute positioned ^ ^ ^4 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air


particle flame ^1 ^ ^5 .5 .5 .5 0 10 normal
particle flame ^-1 ^ ^5 .5 .5 .5 0 10 normal
particle flame ^ ^ ^5 .5 .5 .5 0 10 normal
execute positioned ^1 ^ ^5 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^-1 ^ ^5 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^ ^ ^5 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air

execute positioned ^ ^ ^5 run execute as @e[distance=..1] run damage @s 2
execute positioned ^ ^ ^5 run execute as @e[distance=..2] run data merge entity @s {Fire:100}


particle flame ^1 ^ ^6 .5 .5 .5 0 10 normal
particle flame ^-1 ^ ^6 .5 .5 .5 0 10 normal
particle flame ^ ^ ^6 .5 .5 .5 0 10 normal
execute positioned ^1 ^ ^6 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^-1 ^ ^6 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^ ^ ^6 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air

execute positioned ^ ^ ^6 run execute as @e[distance=..2] run damage @s 2
execute positioned ^ ^ ^6 run execute as @e[distance=..2] run data merge entity @s {Fire:100}

particle flame ^2 ^ ^7 .5 .5 .5 0 10 normal
particle flame ^-2 ^ ^7 .5 .5 .5 0 10 normal
particle flame ^1 ^ ^7 .5 .5 .5 0 10 normal
particle flame ^-1 ^ ^7 .5 .5 .5 0 10 normal
particle flame ^ ^ ^7 .5 .5 .5 0 10 normal
execute positioned ^2 ^ ^7 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^-2 ^ ^7 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^1 ^ ^7 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^-1 ^ ^7 run fill ~-1 ~ ~ ~ ~1 ~ fire replace air
execute positioned ^ ^ ^7 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air

execute positioned ^ ^ ^7 run execute as @e[distance=..2] run damage @s 2
execute positioned ^ ^ ^7 run execute as @e[distance=..2] run data merge entity @s {Fire:100}

particle flame ^1 ^ ^8 .5 .5 .5 0 10 normal
particle flame ^-1 ^ ^8 .5 .5 .5 0 10 normal
particle flame ^ ^ ^8 .5 .5 .5 0 10 normal
execute positioned ^1 ^ ^8 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^-1 ^ ^8 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute positioned ^ ^ ^8 run fill ~ ~-1 ~ ~ ~1 ~ fire replace air

execute positioned ^ ^ ^8 run execute as @e[distance=..1] run damage @s 2
execute positioned ^ ^ ^8 run execute as @e[distance=..2] run data merge entity @s {Fire:100}