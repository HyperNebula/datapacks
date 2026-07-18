# Save the player's inventory NBT to global storage
data modify storage inv_saver:data items set from entity @s Inventory

# Clear the player
clear @s
