advancement revoke @s only bens_game:lightning_bolt

execute store result score #this timestamp run time query gametime

execute unless score @s timestamp >= #this timestamp run function bens_game:custom_items/lightning_bolt/start

execute if score @s timestamp > #this timestamp run function bens_game:custom_items/lightning_bolt/tick

scoreboard players operation @s timestamp = #this timestamp

scoreboard players add @s timestamp 2

schedule function bens_game:custom_items/lightning_bolt/stop_check 2t append