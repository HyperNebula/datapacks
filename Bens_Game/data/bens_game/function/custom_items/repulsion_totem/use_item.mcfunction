advancement revoke @s only bens_game:repulsion_totem
execute unless score @s repulsion_cd matches 1.. run function bens_game:custom_items/repulsion_totem/start
execute unless score @s repulsion_cd matches 1.. run scoreboard players set @s repulsion_cd 30
