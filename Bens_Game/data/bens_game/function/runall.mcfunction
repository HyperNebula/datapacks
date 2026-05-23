
#fight_pit end
execute as @a[scores={deaths=1..}] run function bens_game:fight_pit/stop

#blackjack scoring
execute as @a[scores={player_score=22..}] run function bens_game:blackjack/player_bust
execute as @a[scores={dealer_score=22..}] run function bens_game:blackjack/dealer_bust
