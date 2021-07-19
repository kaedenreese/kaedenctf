# manualpickteam

# Allows for the manual picking of teams from all the participating players

execute as @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:blue_wool"}]}] run function kaedenctf:pickblueteam
execute as @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:red_wool"}]}] run function kaedenctf:pickredteam

clear @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:blue_wool"}]}] minecraft:blue_wool
clear @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:red_wool"}]}] minecraft:red_wool

item replace entity @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:blue_wool"}]}] container.19 with minecraft:blue_wool
item replace entity @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:red_wool"}]}] container.20 with minecraft:red_wool