# droppedblueflag

# Let's do it

tellraw @a[team=!lobby] ["",{"selector":"@p[team=red,nbt={Inventory:[{id:'minecraft:blue_banner'}]}]","color":"red"},{"text":" dropped the Blue Flag!","color":"blue"}]

clear @a minecraft:blue_banner
scoreboard players set BlueFlagState gameState 2

# Play a cool sound
playsound minecraft:block.anvil.land ambient @a 0 0 0 1 1 1

# Remove bossbar
bossbar set blueflag visible false