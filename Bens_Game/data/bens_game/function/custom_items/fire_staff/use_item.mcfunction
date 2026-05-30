
advancement revoke @s only bens_game:fire_staff

execute store result score #this timestamp run time query gametime

execute unless score @s timestamp >= #this timestamp run function bens_game:custom_items/fire_staff/start

execute if score @s timestamp > #this timestamp run function bens_game:custom_items/fire_staff/tick

scoreboard players operation @s timestamp = #this timestamp

scoreboard players add @s timestamp 2

schedule function bens_game:custom_items/fire_staff/stop_check 2t append