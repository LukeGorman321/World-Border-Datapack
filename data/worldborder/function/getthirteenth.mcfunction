# getthirteenth: runs getitemmultiplier with {slot:container.13}
# @s: worldbordermanager
# Called by: tick

scoreboard players set #newslot variables 13
function worldborder:setdataslotto with storage blocks Blocks[0]
return run function worldborder:getitemmultiplier with storage blocks Blocks[0]