# flaghandler
# checks for captures and such
# Capture sites are handled by invisible armor stands, so as to allow flexibility

# Is somebody grabbing the red banner?
execute at @e[type=minecraft:armor_stand,tag=redflag] if score RedFlagState gameState matches 0 run give @p[team=blue,distance=0..1] minecraft:red_banner 1

# Is somebody grabbing the blue banner?
execute at @e[type=minecraft:armor_stand,tag=blueflag] if score BlueFlagState gameState matches 0 run give @p[team=red,distance=0..1] minecraft:blue_banner 1

# Has somebody nabbed the red banner?
execute if entity @p[team=blue,nbt={Inventory:[{id:"minecraft:red_banner"}]}] if score RedFlagState gameState matches 0 run function kaedenctf:giveredflag

# Has somebody nabbed the blue banner?
execute if entity @p[team=red,nbt={Inventory:[{id:"minecraft:blue_banner"}]}] if score BlueFlagState gameState matches 0 run function kaedenctf:giveblueflag

# Are we capturing the red flag?
execute at @e[type=minecraft:armor_stand,tag=blueflag] if score BlueFlagState gameState matches 0 if entity @p[team=blue,nbt={Inventory:[{id:"minecraft:red_banner"}]},distance=0..1] run function kaedenctf:captureredflag

# Are we capturing the red flag?
execute at @e[type=minecraft:armor_stand,tag=redflag] if score RedFlagState gameState matches 0 if entity @p[team=red,nbt={Inventory:[{id:"minecraft:blue_banner"}]},distance=0..1] run function kaedenctf:captureblueflag

# Dropping the flags?
execute if entity @e[type=item,nbt={Item:{id:"minecraft:red_banner"}}] if score RedFlagState gameState matches 1 run function kaedenctf:droppedredflag
execute if entity @e[type=item,nbt={Item:{id:"minecraft:blue_banner"}}] if score BlueFlagState gameState matches 1 run function kaedenctf:droppedblueflag

# Picking up the flags?
execute if entity @p[team=blue,nbt={Inventory:[{id:"minecraft:red_banner"}]}] if score RedFlagState gameState matches 2 run function kaedenctf:pickupredflag
execute if entity @p[team=red,nbt={Inventory:[{id:"minecraft:blue_banner"}]}] if score BlueFlagState gameState matches 2 run function kaedenctf:pickupblueflag