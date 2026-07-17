$execute as $(player_id) run tick rate 20

$execute as $(player_id) run effect give @s nausea 5 10 true
$execute as $(player_id) run effect give @s slowness 5 10 true


$execute as $(player_id) run advancement revoke @s only bens_game:time_slow