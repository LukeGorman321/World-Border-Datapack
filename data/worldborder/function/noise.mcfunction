# noise: plays noise for 
#
# Called by Load

schedule function worldborder:noise 5s
execute at @e[tag=worldbordermanager] run playsound minecraft:block.beacon.ambient ambient @a
