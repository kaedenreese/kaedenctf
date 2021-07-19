# setclassarthur
#
# Handles setting up to respawn as the Arthur Class

# Set the player to respawn as Arthur
clear @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] minecraft:diamond_sword{display:{Name:"\"King Arthur\""}} 1

execute if entity @p[team=blue,nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] run tellraw @a[team=blue] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:19b,'id':'minecraft:diamond_sword'}]},team=blue]","color":"blue"},{"text":" is respawning as King Arthur","color":"green"}]
execute if entity @p[team=red,nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] run tellraw @a[team=red] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:19b,'id':'minecraft:diamond_sword'}]},team=red]","color":"red"},{"text":" is respawning as King Arthur","color":"green"}]
scoreboard players set @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] classSelection 1
tag @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] add swap
item replace entity @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] container.19 with minecraft:diamond_sword{display:{Name:"\"King Arthur\""},Enchantments:[{id:sharpness,lvl:5}]}