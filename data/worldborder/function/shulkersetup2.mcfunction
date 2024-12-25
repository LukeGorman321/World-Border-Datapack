# shulkersetup: Sets the items in the shulker
# @s: worldbordermanager
# Called by tick

execute unless block ~ ~ ~ black_shulker_box run function worldborder:makeshulker

function worldborder:setslot {slot:0, item:dirt}
function worldborder:setslot {slot:1, item:grass_block}
function worldborder:setslot {slot:2, item:oak_log}
function worldborder:setslot {slot:3, item:birch_log}
item replace block ~ ~ ~ container.4 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.5 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.6 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.7 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']

function worldborder:setslot {slot:9, item:cobblestone}
function worldborder:setslot {slot:10, item:stone}
function worldborder:setslot {slot:11, item:spruce_log}
function worldborder:setslot {slot:12, item:acacia_log}
item replace block ~ ~ ~ container.13 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.14 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.15 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.16 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.17 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']

function worldborder:setslot {slot:18, item:cobbled_deepslate}
function worldborder:setslot {slot:19, item:deepslate}
function worldborder:setslot {slot:20, item:dark_oak_log}
function worldborder:setslot {slot:21, item:jungle_log}
item replace block ~ ~ ~ container.22 with minecraft:writable_book[lore=['{"text":""}'], item_name='"Return to Deposit Menu"']	
item replace block ~ ~ ~ container.23 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.24 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.25 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.26 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']