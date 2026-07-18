# Move the first item from storage into the Marker's main hand
data modify entity @e[type=marker,tag=inv_transfer,limit=1] HandItems[0] set from storage inv_saver:data items[0]

# Extract the original Slot number into a temporary scoreboard
execute store result score #slot inv_temp run data get storage inv_saver:data items[0].Slot

# -- RESTORE ARMOR AND OFFHAND --
# Player armor and offhand use named slots, not numerical ones.
execute if score #slot inv_temp matches 100 run item replace entity @s armor.feet from entity @e[type=marker,tag=inv_transfer,limit=1] weapon.mainhand
execute if score #slot inv_temp matches 101 run item replace entity @s armor.legs from entity @e[type=marker,tag=inv_transfer,limit=1] weapon.mainhand
execute if score #slot inv_temp matches 102 run item replace entity @s armor.chest from entity @e[type=marker,tag=inv_transfer,limit=1] weapon.mainhand
execute if score #slot inv_temp matches 103 run item replace entity @s armor.head from entity @e[type=marker,tag=inv_transfer,limit=1] weapon.mainhand
execute if score #slot inv_temp matches -106 run item replace entity @s weapon.offhand from entity @e[type=marker,tag=inv_transfer,limit=1] weapon.mainhand

# -- RESTORE MAIN INVENTORY --
# Slots 0 to 35 use the dynamic Macro function
execute if score #slot inv_temp matches 0..35 run function inv_saver:apply_macro with storage inv_saver:data items[0]

# Remove the processed item so the loop can advance to the next one
data remove storage inv_saver:data items[0]

# Loop again if there are still items left
execute if data storage inv_saver:data items[0] run function inv_saver:restore_loop
