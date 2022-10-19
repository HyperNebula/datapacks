effect give @a[gamemode=!creative] minecraft:jump_boost 1 2 true
execute at @a[scores={jumpamount=1},gamemode=!creative] run summon shulker ~ ~-2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,AttachFace:0b,CustomName:"{\"text\":\"JumpPlatform\"}",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}
scoreboard players set @a jumpamount 0
scoreboard players add @e[name="JumpPlatform",type=minecraft:shulker] jumpdelete 1
kill @e[type=shulker,scores={jumpdelete=12..}]
execute at @a run tp @e[type=minecraft:shulker,name="JumpPlatform",distance=..3] ~ ~-0.7 ~