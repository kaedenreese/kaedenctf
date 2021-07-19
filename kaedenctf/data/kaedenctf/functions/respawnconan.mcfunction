# respawnconan

# Let's do it!
clear

item replace entity @p[nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]},team=!lobby] container.21 with minecraft:bow{display:{Name:"\"Robin Hood\""},Enchantments:[{id:power,lvl:5}]}
item replace entity @p[nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]},team=!lobby] container.19 with minecraft:diamond_sword{display:{Name:"\"King Arthur\""},Enchantments:[{id:sharpness,lvl:5}]}
item replace entity @p[nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]},team=!lobby] container.20 with minecraft:diamond_axe{display:{Name:"\"Conan the Barbarian\""},Enchantments:[{id:sharpness,lvl:5}]}

item replace entity @p[nbt={Health:0.0f},scores={classSelection=2},tag=swap] hotbar.0 with minecraft:diamond_axe{Enchantments:[{id:sharpness,lvl:5}]}

scoreboard players set @p[nbt={Health:0.0f},scores={classSelection=2},tag=swap] currentClass 2

tag @p[nbt={Health:0.0f},scores={classSelection=2},tag=swap] remove swap