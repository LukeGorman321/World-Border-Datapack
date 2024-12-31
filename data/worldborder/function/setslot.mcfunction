# setslot: Sets the items in the shulker for list of depositable items
# @s: worldbordermanager
# Called by shulkersetup functions

$scoreboard players set #newslot variables $(slot)
function worldborder:setdataslotto with storage blocks Blocks[0]
$item replace block ~ ~ ~ container.$(slot) with minecraft:$(item)[lore=['{"text":""}'], max_stack_size=99]
$execute store result block ~ ~ ~ Items[$(slot)].count int 1 run function worldborder:getitemmultiplier with storage blocks Blocks[0]
