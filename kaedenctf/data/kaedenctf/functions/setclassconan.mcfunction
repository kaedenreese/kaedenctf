# setclassconan
#
# Handles setting up to respawn as the Conan Class

# Set the player to respawn as Conan
clear @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] minecraft:diamond_axe{display:{Name:"\"Conan the Barbarian\""}} 1

execute if entity @p[team=blue,nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] run tellraw @a[team=blue] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:20b,'id':'minecraft:diamond_axe'}]},team=blue]","color":"blue"},{"text":" is respawning as Conan the Barbarian","color":"green"}]
execute if entity @p[team=red,nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] run tellraw @a[team=red] ["",{"selector":"@p[nbt=!{Inventory:[{Slot:20b,'id':'minecraft:diamond_axe'}]},team=red]","color":"red"},{"text":" is respawning as Conan the Barbarian","color":"green"}]
scoreboard players set @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] classSelection 2
tag @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] add swap
item replace entity @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] container.20 with minecraft:diamond_axe{display:{Name:"\"Conan the Barbarian\""},Enchantments:[{id:sharpness,lvl:5}]}