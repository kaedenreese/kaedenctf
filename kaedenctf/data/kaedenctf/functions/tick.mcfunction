# First, we have to look for new players joining who are not registered to an active game
# Or, if no game is active, remove game flags

function kaedenctf:checkforplayers

# Next, if we have an active game going, check for flag grabs and returns
execute if score GameState gameState matches 2 run function kaedenctf:flaghandler
execute if score GameState gameState matches 1 run function kaedenctf:classhandler
execute if score GameState gameState matches 2 run function kaedenctf:classhandler

# Team Selection
execute if score GameState gameState matches 5 if score VoteMethod gameState matches 2 run function kaedenctf:manualpickteam

# Handle Respawning
execute as @p[nbt={Health:0.0f},scores={classSelection=1},tag=swap] run function kaedenctf:respawnarthur
execute as @p[nbt={Health:0.0f},scores={classSelection=2},tag=swap] run function kaedenctf:respawnconan
execute as @p[nbt={Health:0.0f},scores={classSelection=3},tag=swap] run function kaedenctf:respawnrobin

# Give Effects
function kaedenctf:effectstick