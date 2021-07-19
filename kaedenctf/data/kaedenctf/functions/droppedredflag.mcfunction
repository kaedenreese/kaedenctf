# droppedredflag

# Let's do it

tellraw @a[team=!lobby] ["",{"selector":"@p[team=blue,nbt={Inventory:[{id:'minecraft:red_banner'}]}]","color":"blue"},{"text":" dropped the Red Flag!","color":"red"}]

clear @a minecraft:red_banner
scoreboard players set RedFlagState gameState 2

# Play a cool sound
playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 1 1

# Remove bossbar
bossbar set redflag visible false