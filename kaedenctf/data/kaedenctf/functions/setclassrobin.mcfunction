# setclassrobin
#
# Handles setting up to respawn as the Robin Class

# Set the player to respawn as Robin
clear @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] minecraft:bow{display:{Name:"\"Robin Hood\""}} 1

execute if entity @p[team=blue,nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] run tellraw @a[team=blue] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:21b,'id':'minecraft:bow'}]},team=blue]","color":"blue"},{"text":" is respawning as Robin Hood","color":"green"}]
execute if entity @p[team=red,nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] run tellraw @a[team=red] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:21b,'id':'minecraft:bow'}]},team=red]","color":"red"},{"text":" is respawning as Robin Hood","color":"green"}]
scoreboard players set @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] classSelection 3
tag @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] add swap
item replace entity @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] container.21 with minecraft:bow{display:{Name:"\"Robin Hood\""},Enchantments:[{id:power,lvl:5}]}