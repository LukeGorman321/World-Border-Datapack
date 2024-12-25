# checkforitems: check if there are any items in the center part of the shulker and update multiplier
# @s: worldbordermanager
# Called by: tick

execute store result score #count variables run data get block ~ ~ ~ Items[13].count
execute store result score #multiplier variables run function worldborder:getthirteenth
scoreboard players operation #temp variables = #count variables
scoreboard players operation #temp variables *= #multiplier variables
scoreboard players operation #progress variables += #temp variables
data modify block ~ ~ ~ Items[13].id set value "air"

execute as @p at @s run playsound minecraft:entity.zombie_villager.cure block @s ~ ~ ~ 0.5
particle end_rod ~ ~ ~ 0 1 0 1 15

execute if score #progress variables >= #required variables run function worldborder:expand

bossbar set minecraft:progress name [{"text":"Progress: ","color":"green"},\
{"score":{"name":"#progress","objective":"variables","color":"green"}},\
{"text":"/","color":"green"},{"score":{"name":"#required","objective":"variables","color":"green"}}]
execute store result bossbar minecraft:progress value run scoreboard players get #progress variables

execute if score #progress variables < #fifth variables run data modify entity @s block_state.Properties.charges set value "0"
execute if score #progress variables >= #fifth variables run data modify entity @s block_state.Properties.charges set value "1"
execute if score #progress variables >= #twofifth variables run data modify entity @s block_state.Properties.charges set value "2"
execute if score #progress variables >= #threefifth variables run data modify entity @s block_state.Properties.charges set value "3"
execute if score #progress variables >= #fourfifth variables run data modify entity @s block_state.Properties.charges set value "4"