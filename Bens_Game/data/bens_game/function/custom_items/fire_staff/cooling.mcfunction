
scoreboard players remove @a[scores={fire_staff=1..}] fire_staff 1
execute if entity @a[scores={fire_staff=300..}] run particle smoke ~ ~1.5 ~ 0.1 0.1 0.1 0 5 normal

execute if entity @a[scores={fire_staff=1..}] run schedule function bens_game:custom_items/fire_staff/cooling 4t append
