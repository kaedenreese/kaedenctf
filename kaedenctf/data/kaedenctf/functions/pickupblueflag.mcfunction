# pickupblueflag

# Just like it sounds

# Find who has it and set 'em up
scoreboard players set BlueFlagState gameState 1
playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 1 1

# Next, give the player the flag on their head
item replace entity @p[team=red,nbt={Inventory:[{id:"minecraft:blue_banner"}]}] armor.head with minecraft:blue_banner{Enchantments:[{id:binding_curse,lvl:1}]}

# Next, make an announcement
#title @a title {"text":"Blue Flag Picked Up","color":"blue"}

# Put their name in chat
tellraw @a[team=!lobby] ["",{"selector":"@p[team=red,nbt={Inventory:[{id:'minecraft:blue_banner'}]}]","color":"red"},{"text":" picked up the Blue Flag!","color":"blue"}]

# A bossbar at the top?
bossbar set blueflag visible true
bossbar set blueflag players @a
bossbar set blueflag name ["",{"selector":"@p[team=red,nbt={Inventory:[{id:'minecraft:blue_banner'}]}]","color":"red"}]