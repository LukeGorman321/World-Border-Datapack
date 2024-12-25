# shulkersetup: Sets the items in the shulker
# @s: worldbordermanager
# Called by tick

execute unless block ~ ~ ~ black_shulker_box run function worldborder:makeshulker

item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.1 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.2 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.3 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.4 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.5 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.6 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.7 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.9 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']

item replace block ~ ~ ~ container.10 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.11 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.12 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.14 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.15 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.16 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.17 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.19 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']

item replace block ~ ~ ~ container.20 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.21 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.22 with minecraft:writable_book[lore=['{"text":""}'], item_name='"View List of Depositable Items"']	
item replace block ~ ~ ~ container.23 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.24 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']
item replace block ~ ~ ~ container.25 with minecraft:gray_stained_glass_pane[lore=['{"text":""}'], item_name='""']

execute if score #barvisible variables matches 0 run item replace block ~ ~ ~ container.26 with minecraft:ender_eye[lore=['{"text":""}'], item_name='"Show Progress Bar"']
execute if score #barvisible variables matches 1 run item replace block ~ ~ ~ container.26 with minecraft:ender_pearl[lore=['{"text":""}'], item_name='"Hide Progress Bar"']