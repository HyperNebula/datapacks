advancement revoke @s only bens_game:phase_shifter
execute unless score @s phase_cd matches 1.. run function bens_game:custom_items/phase_shifter/start
execute unless score @s phase_cd matches 1.. run scoreboard players set @s phase_cd 60
