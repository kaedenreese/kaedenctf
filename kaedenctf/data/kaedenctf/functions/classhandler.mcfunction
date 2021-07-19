# classhandler

# Allows players to change classes while in the game

# Check for class changes
execute if entity @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] run function kaedenctf:setclassarthur
execute if entity @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] run function kaedenctf:setclassconan
execute if entity @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] run function kaedenctf:setclassrobin
#execute if entity @p[nbt=!{Inventory:[{Slot:22b,"id":"minecraft:trident"}]}] run function kaedenctf:setclassaqua