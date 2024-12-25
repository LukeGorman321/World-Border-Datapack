# getitemmultiplier: returns multiplier of the item in the shulker
# @s: worldbordermanager
# Called by: checkforitems

$execute if items block ~ ~ ~ container.$(slot) $(name) run return $(multiplier)
$return run execute unless score #zero variables matches $(next) run function worldborder:getitemmultiplier with storage blocks Blocks[$(next)]
return 0