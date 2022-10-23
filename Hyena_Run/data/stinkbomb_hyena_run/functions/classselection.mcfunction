execute in the_end positioned -3.5 68 -15.5 run team join hyena @a[distance=..1.1]

execute in the_end positioned 4.5 68 -15.5 run team join cat @a[distance=..1.1]
execute in the_end positioned 4.5 68 -15.5 run tag @a[distance=..1.1] add fighter

execute in the_end positioned 6.5 68 -15.5 run team join cat @a[distance=..1.1]
execute in the_end positioned 6.5 68 -15.5 run tag @a[distance=..1.1] add miner

execute in the_end positioned 8.5 68 -15.5 run team join cat @a[distance=..1.1]
execute in the_end positioned 8.5 68 -15.5 run tag @a[distance=..1.1] add redstoner

execute in the_end positioned 10.5 68 -15.5 run team join cat @a[distance=..1.1]
execute in the_end positioned 10.5 68 -15.5 run tag @a[distance=..1.1] add scout

execute in the_end positioned 12.5 68 -15.5 run team join cat @a[distance=..1.1]
execute in the_end positioned 12.5 68 -15.5 run tag @a[distance=..1.1] add support

execute in minecraft:the_end run team leave @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4]

execute in minecraft:the_end run tag @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4] remove fighter
execute in minecraft:the_end run tag @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4] remove miner
execute in minecraft:the_end run tag @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4] remove redstoner
execute in minecraft:the_end run tag @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4] remove scout
execute in minecraft:the_end run tag @a[x=-6,y=66,z=-15,dx=22,dy=6,dz=4] remove support