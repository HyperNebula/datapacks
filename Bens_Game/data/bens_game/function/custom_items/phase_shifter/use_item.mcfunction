advancement revoke @s only bens_game:phase_shifter

execute store result score #this timestamp run time query gametime
execute unless score @s timestamp >= #this timestamp run function bens_game:custom_items/phase_shifter/start

scoreboard players operation @s timestamp = #this timestamp
scoreboard players add @s timestamp 2
