# Installation
#
# This is the installation that will setup all your scoreboards and such. Just run /function install

# Setup Scoreboards
scoreboard objectives add currentGameID dummy "Player Game ID"
scoreboard objectives add AFK dummy "Away From Keyboard"
scoreboard objectives add currentScores dummy "Scoreboard"
scoreboard objectives add stats_Captures dummy "Capture Stats"
scoreboard objectives add stats_Kills playerKillCount "Kills"
scoreboard objectives add stats_Deaths deathCount "Deaths"
scoreboard objectives add gameState dummy "Game State"
scoreboard objectives add classSelection dummy "Class Selection"
scoreboard objectives add currentClass dummy "Current Class"
scoreboard objectives add vote_captain dummy "Vote Captain"
scoreboard objectives add mapid dummy "Map ID Numbers"
scoreboard objectives add param_redflag dummy "Red Flag Orientation"
scoreboard objectives add param_blueflag dummy "Blue Flag Orientation"
scoreboard objectives add param_maxscore dummy "Win Score"

# Set gamerules
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doFireTick false
gamerule doWeatherCycle false

# Create Teams
team add red "Red Team"
team add blue "Blue Team"
team add afk "AFK"
team add lobby "Lobby"

# Set Colors
team modify red color red
team modify blue color blue
team modify afk color yellow
team modify lobby color white

# Stop inside fighting
team modify afk friendlyFire false
team modify red friendlyFire false
team modify blue friendlyFire false
team modify lobby friendlyFire false

# Setup the main score scoreboard
team join red Red
team join blue Blue
scoreboard players set Red currentScores 0
scoreboard players set Blue currentScores 0

# Setup the gameState // 0 is lobby, 1 is pre-game, 2 is game, 3 is post-game, 4 is reset, 5 is team picking
scoreboard players set CurrentGameID gameState 0
scoreboard players set GameState gameState 0

scoreboard players set RedFlagState gameState 0
scoreboard players set BlueFlagState gameState 0
#  // Flags are 0 for home, 1 for out

scoreboard players set VoteMethod gameState 2
# 0 = Random teams, 1 = Mixer mode, 2 = manual picking

# Set up bossbars
bossbar add blueflag "Blue Flag"
bossbar add redflag "Red Flag"
bossbar add awaiting "Next Game"
bossbar set blueflag visible false
bossbar set redflag visible false
bossbar set awaiting visible false
bossbar set redflag value 100
bossbar set blueflag value 100
bossbar set redflag color red
bossbar set blueflag color blue