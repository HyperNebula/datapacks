
#TP players into arena
tp @a[tag=red_fighter] -34 -21 36
tp @a[tag=black_fighter] -34 -21 48

effect clear @a[tag=red_fighter]
effect clear @a[tag=black_fighter]

#clear player inventories (should have been saved in join function)
#clear @a[tag=red_fighter]
#clear @a[tag=black_fighter]

#remove them from the lobbu team
team leave @a[tag=red_fighter]
team leave @a[tag=black_fighter]

#remove buttons
setblock -31 -22 31 air
setblock -34 -22 31 air
setblock -37 -22 31 air
