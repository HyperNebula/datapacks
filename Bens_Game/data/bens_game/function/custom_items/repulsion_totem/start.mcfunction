playsound item.mace.smash_ground player @a ~ ~ ~ 1 0.5
particle gust ~ ~1 ~ 1 1 1 0 30 normal
particle explosion ~ ~1 ~ 1 1 1 0 1 normal

# Push entities away. Since we use `launch`, negative speed repels them.
execute as @e[distance=0.1..6,type=!item,type=!experience_orb] run launch @s toward @p -1.5
