# setdataslotto: sets which slot to set items to 
# 
# Called by getthirteen and setslot

$execute store result storage blocks Blocks[$(i)].slot int 1 run scoreboard players get #newslot variables
$execute unless score #zero variables matches $(next) run function worldborder:setdataslotto with storage blocks Blocks[$(next)]