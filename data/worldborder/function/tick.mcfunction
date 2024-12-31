# tick: Manages shulker
#
# Runs every tick

execute as @e[tag=worldbordermanager] at @s if score @s menu matches 0 run function worldborder:bartoggle

execute as @e[tag=worldbordermanager] at @s unless items block ~ ~ ~ container.22 minecraft:writable_book if score @s menu matches 2 run item replace block ~ ~ ~ container.13 with air
execute as @e[tag=worldbordermanager] at @s unless items block ~ ~ ~ container.22 minecraft:writable_book if score @s menu matches 0 run scoreboard players set @s menu 3
execute as @e[tag=worldbordermanager] at @s unless items block ~ ~ ~ container.22 minecraft:writable_book if score @s menu matches 2 run scoreboard players set @s menu 0
execute as @e[tag=worldbordermanager] at @s unless items block ~ ~ ~ container.22 minecraft:writable_book if score @s menu matches 1 run scoreboard players set @s menu 2
execute as @e[tag=worldbordermanager] at @s unless items block ~ ~ ~ container.22 minecraft:writable_book if score @s menu matches 3 run scoreboard players set @s menu 1

execute as @e[tag=worldbordermanager] at @s if score @s menu matches 0 run function worldborder:shulkersetup
execute as @e[tag=worldbordermanager] at @s if score @s menu matches 1 run function worldborder:shulkersetup2
execute as @e[tag=worldbordermanager] at @s if score @s menu matches 2 run function worldborder:shulkersetup3

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

execute as @e[tag=worldbordermanager] at @s if score @s menu matches 0 if data block ~ ~ ~ {Items:[{Slot:13b}]} if function worldborder:getthirteenth run function worldborder:checkforitems

execute as @e[type=armor_stand,nbt={Small:true}] at @s align xyz summon block_display run function worldborder:newdeposit