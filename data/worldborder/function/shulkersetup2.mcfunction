# shulkersetup: Sets the items in the shulker
# @s: worldbordermanager
# Called by tick

execute unless block ~ ~ ~ black_shulker_box run function worldborder:makeshulker

execute unless block ~ ~ ~ chest{Items:[{Slot:0b}]} run scoreboard players set #cost money 50


function worldborder:setslot {slot:0, item:dirt}
function worldborder:setslot {slot:1, item:grass_block}
function worldborder:setslot {slot:2, item:sand}
function worldborder:setslot {slot:3, item:gravel}
function worldborder:setslot {slot:4, item:soul_sand}
function worldborder:setslot {slot:5, item:netherrack}
function worldborder:setslot {slot:6, item:oak_log}
function worldborder:setslot {slot:7, item:birch_log}
function worldborder:setslot {slot:8, item:spruce_log}

function worldborder:setslot {slot:9, item:cobblestone}
function worldborder:setslot {slot:10, item:stone}
function worldborder:setslot {slot:11, item:andesite}
function worldborder:setslot {slot:12, item:granite}
function worldborder:setslot {slot:13, item:soul_soil}
function worldborder:setslot {slot:14, item:nether_bricks}
function worldborder:setslot {slot:15, item:acacia_log}
function worldborder:setslot {slot:16, item:dark_oak_log}
function worldborder:setslot {slot:17, item:jungle_log}


function worldborder:setslot {slot:18, item:cobbled_deepslate}
function worldborder:setslot {slot:19, item:deepslate}
function worldborder:setslot {slot:20, item:diorite}
function worldborder:setslot {slot:21, item:tuff}
item replace block ~ ~ ~ container.22 with minecraft:writable_book[lore=['{"text":""}'], item_name='"Next Page"']	
function worldborder:setslot {slot:23, item:basalt}
function worldborder:setslot {slot:24, item:mangrove_log}
function worldborder:setslot {slot:25, item:cherry_log}
function worldborder:setslot {slot:26, item:pale_oak_log}