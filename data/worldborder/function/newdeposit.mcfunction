# New Deposit: Creates a new deposit
# @s: worldbordermanager
# Runs on new deposit placed

data modify entity @s block_state.Name set value "respawn_anchor"
data modify entity @s transformation.scale set value [1.1f,1.6f,1.1f]
data modify entity @s transformation.translation set value [-0.05f,-0.05f,-0.05f]
tag @s add worldbordermanager

kill @e[type=armor_stand, nbt={Small:true}, limit=1, sort=nearest]

function worldborder:makeshulker