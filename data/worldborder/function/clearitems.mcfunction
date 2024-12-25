# clearitems: clears items from the player that are in the list of depositable items
# 
# Called by tick

$clear @a minecraft:$(name)[lore=['{"text":""}']]
$execute unless score #zero variables matches $(next) run function worldborder:clearitems with storage blocks Blocks[$(next)]