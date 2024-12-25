# tick: Manages shulker
#
# Runs every tick

execute if score #menu variables matches 0 run function worldborder:bartoggle

execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.22 minecraft:writable_book if score #menu variables matches 1 run item replace block ~ ~ ~ container.13 with air
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.22 minecraft:writable_book if score #menu variables matches 0 run scoreboard players set #menu variables 2
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.22 minecraft:writable_book if score #menu variables matches 1 run scoreboard players set #menu variables 0
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.22 minecraft:writable_book if score #menu variables matches 2 run scoreboard players set #menu variables 1

execute as @e[tag=worldbordermanager] at @s if score #menu variables matches 0 run function worldborder:shulkersetup
execute as @e[tag=worldbordermanager] at @s if score #menu variables matches 1 run function worldborder:shulkersetup2

execute as @e[tag=worldbordermanager] at @s run particle portal ~ ~ ~ 0 1 0 3 2

# Remove items the player shouldn't have
clear @a minecraft:gray_stained_glass_pane[lore=['{"text":""}']]
clear @a minecraft:writable_book[lore=['{"text":""}']]
clear @a minecraft:ender_eye[lore=['{"text":""}']]
clear @a minecraft:ender_pearl[lore=['{"text":""}']]
clear @a minecraft:black_shulker_box[lore=['{"text":""}']]

function worldborder:clearitems with storage blocks Blocks[0]

kill @e[type=item,nbt={Item:{components:{"minecraft:lore":['""']}}}]

# Check for items and update world border 

execute as @e[tag=worldbordermanager] at @s if score #menu variables matches 0 if data block ~ ~ ~ {Items:[{Slot:13b}]} if function worldborder:getthirteenth run function worldborder:checkforitems