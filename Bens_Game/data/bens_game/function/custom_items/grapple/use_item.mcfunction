advancement revoke @s only bens_game:grapple
execute unless score @s grapple_cd matches 1.. run function bens_game:custom_items/grapple/start
execute unless score @s grapple_cd matches 1.. run scoreboard players set @s grapple_cd 150
