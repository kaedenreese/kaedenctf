# beginmanualselection

# Begin the manual selection of teams
# Start by putting the game in the proper mode
clear @a

# Move everyone to lobby team
team join lobby @a

item replace entity @a container.19 with minecraft:blue_wool
item replace entity @a container.20 with minecraft:red_wool

scoreboard players set GameState gameState 5