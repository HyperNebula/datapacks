# Create a dummy scoreboard for slot math (fails silently if it already exists)
scoreboard objectives add inv_temp dummy

# Summon an invisible marker entity to hold the items during transfer
summon marker ~ ~ ~ {Tags:["inv_transfer"], HandItems:[{},{}]}

# If there are saved items, start the processing loop
execute if data storage inv_saver:data items[0] run function inv_saver:restore_loop

# Cleanup: Kill the temporary marker once finished
kill @e[type=marker,tag=inv_transfer]
