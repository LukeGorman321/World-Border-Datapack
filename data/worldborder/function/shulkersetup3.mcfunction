# shulkersetup: Sets the items in the shulker
# @s: worldbordermanager
# Called by tick

execute unless block ~ ~ ~ black_shulker_box run function worldborder:makeshulker

execute unless block ~ ~ ~ chest{Items:[{Slot:0b}]} run scoreboard players set #cost money 50


function worldborder:setslot {slot:0, item:wheat_seeds}
function worldborder:setslot {slot:1, item:wheat}
function worldborder:setslot {slot:2, item:bone}
function worldborder:setslot {slot:3, item:iron_nugget}
function worldborder:setslot {slot:4, item:bamboo}
function worldborder:setslot {slot:5, item:rotten_flesh}
function worldborder:setslot {slot:6, item:oak_sapling}
function worldborder:setslot {slot:7, item:birch_sapling}
function worldborder:setslot {slot:8, item:spruce_sapling}

function worldborder:setslot {slot:9, item:carrot}
function worldborder:setslot {slot:10, item:sugar_cane}
function worldborder:setslot {slot:11, item:bone_meal}
function worldborder:setslot {slot:12, item:iron_ingot}
function worldborder:setslot {slot:13, item:gunpowder}
function worldborder:setslot {slot:14, item:arrow}
function worldborder:setslot {slot:15, item:acacia_sapling}
function worldborder:setslot {slot:16, item:dark_oak_sapling}
function worldborder:setslot {slot:17, item:jungle_sapling}


function worldborder:setslot {slot:18, item:potato}
function worldborder:setslot {slot:19, item:sugar}
function worldborder:setslot {slot:20, item:bone_block}
function worldborder:setslot {slot:21, item:iron_block}
item replace block ~ ~ ~ container.22 with minecraft:writable_book[lore=['{"text":""}'], item_name='"Return to Deposit Menu"']	
function worldborder:setslot {slot:23, item:poppy}
function worldborder:setslot {slot:24, item:mangrove_propagule}
function worldborder:setslot {slot:25, item:cherry_sapling}
function worldborder:setslot {slot:26, item:pale_oak_sapling}