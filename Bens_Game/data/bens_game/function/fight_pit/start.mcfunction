
#TP players into arena
tp @a[tag=red_fighter] -34 -21 36
tp @a[tag=black_fighter] -34 -21 48

#clear player inventories (should have been saved in join function)
#clear @a[tag=red_fighter]
#clear @a[tag=black_fighter]

#remove them from the lobbu team
team leave @a[tag=red_fighter]
team leave @a[tag=black_fighter]
