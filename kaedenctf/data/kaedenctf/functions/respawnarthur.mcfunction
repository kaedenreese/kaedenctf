# respawnarthur

# Let's do it!
clear

# TESTING
#tellraw @a ["",{"selector":"@p[nbt={Health:0.0f},scores={classSelection=1},tag=swap]","color":"blue"},{"text":" ","color":"green"}]

item replace entity @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]},team=!lobby] container.21 with minecraft:bow{display:{Name:"\"Robin Hood\""},Enchantments:[{id:power,lvl:5}]}
item replace entity @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]},team=!lobby] container.19 with minecraft:diamond_sword{display:{Name:"\"King Arthur\""},Enchantments:[{id:sharpness,lvl:5}]}
item replace entity @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]},team=!lobby] container.20 with minecraft:diamond_axe{display:{Name:"\"Conan the Barbarian\""},Enchantments:[{id:sharpness,lvl:5}]}

item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] hotbar.0 with minecraft:diamond_sword{display:{Name:"\"Excalibur\""},Enchantments:[{id:sharpness,lvl:5}]}
item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] weapon.offhand with minecraft:shield
item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] armor.chest with minecraft:diamond_chestplate
item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] armor.feet with minecraft:diamond_boots
item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] armor.legs with minecraft:diamond_leggings
item replace entity @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] armor.head with minecraft:diamond_helmet

scoreboard players set @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] currentClass 1

tag @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] remove swap