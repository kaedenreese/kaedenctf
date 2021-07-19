# checkforplayers
#
# Make sure new players are registered properly, returning players are put where they need to be, and players that left in the middle of a game are cleaned up

# First, see if we have new players and set them to the lobby team
#item replace entity @p[team=,nbt=!{Inventory:[{Slot:21b,"id":"minecraft:bow"}]}] container.21 with minecraft:bow{display:{Name:"\"Robin Hood\""},Enchantments:[{id:power,lvl:5}]}
#item replace entity @p[team=,nbt=!{Inventory:[{Slot:19b,"id":"minecraft:diamond_sword"}]}] container.19 with minecraft:diamond_sword{display:{Name:"\"King Arthur\""},Enchantments:[{id:sharpness,lvl:5}]}
#item replace entity @p[team=,nbt=!{Inventory:[{Slot:20b,"id":"minecraft:diamond_axe"}]}] container.20 with minecraft:diamond_axe{display:{Name:"\"Conan the Barbarian\""},Enchantments:[{id:sharpness,lvl:5}]}
scoreboard players set @a[team=] currentClass 0
execute at @e[type=armor_stand,tag=lobby] run tp @a[team=] ~ ~ ~
team join lobby @a[team=]

# If we have an ID mismatch, punt them to the lobby
