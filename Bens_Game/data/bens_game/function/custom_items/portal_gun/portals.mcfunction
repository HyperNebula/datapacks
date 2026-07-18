# --- PORTAL 1 ---
execute at @e[tag=portal1] run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute at @e[tag=portal1] run particle dust{color:[0.000,0.031,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

# 1. Tag players AT portal 1 who have NO cooldown
# (Using "unless score ... matches 1.." is safer because it works even if their score is totally empty/null)
execute at @e[tag=portal1] as @a[distance=..1] unless score @s portal_delay matches 1.. run tag @s add tp_to_2


# --- PORTAL 2 ---
execute at @e[tag=portal2] run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute at @e[tag=portal2] run particle dust{color:[1.000,0.392,0.039],scale:1} ~ ~ ~ 0 0 0 0 1 force

# 2. Tag players AT portal 2 who have NO cooldown
execute at @e[tag=portal2] as @a[distance=..1] unless score @s portal_delay matches 1.. run tag @s add tp_to_1


# --- APPLY COOLDOWNS & TELEPORT ---
# 3. Give the tagged players their cooldown BEFORE they move
scoreboard players set @e[tag=tp_to_1] portal_delay 40
scoreboard players set @e[tag=tp_to_2] portal_delay 40

# 4. Teleport the tagged players to the opposite portal
execute as @e[tag=tp_to_2] at @n[tag=portal2] run tp @s ~ ~ ~
execute as @e[tag=tp_to_1] at @n[tag=portal1] run tp @s ~ ~ ~

execute as @a[tag=tp_to_1] at @s run playsound entity.breeze.inhale ambient @s ~ ~ ~ 2 1
execute as @a[tag=tp_to_2] at @s run playsound entity.breeze.inhale ambient @s ~ ~ ~ 2 1

# 5. Clean up the tags so they are ready for the next time they use a portal
tag @a remove tp_to_1
tag @a remove tp_to_2



# --- TIMER COUNTDOWN ---
# This continuously subtracts 1 from the delay every tick until it hits 0
scoreboard players remove @a[scores={portal_delay=1..}] portal_delay 1

# Loop the function
execute if entity @e[type=area_effect_cloud,tag=portal] run schedule function bens_game:custom_items/portal_gun/portals 1