# effectstick

# Gives effects to the players of various classes

execute if score GameState gameState matches 2 if entity @p[scores={currentClass=1}] run effect give @a[scores={currentClass=1}] minecraft:strength 1000000 1 true
execute if score GameState gameState matches 2 if entity @p[scores={currentClass=2}] run effect give @a[scores={currentClass=2}] minecraft:speed 1000000 1 true