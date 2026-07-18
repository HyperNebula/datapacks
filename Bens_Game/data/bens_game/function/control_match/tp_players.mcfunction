title @a title {"shadow_color":-5636096,"text":"FIGHT!"}

worldborder set 192

spreadplayers -200 24 40 96 false @a

effect clear @a
clear @a copper_nugget
clear @a iron_nugget
clear @a gold_nugget

give @a arrow 64

gamemode survival @a
tag @a add playing
team empty lobby
team join NoNames @a
