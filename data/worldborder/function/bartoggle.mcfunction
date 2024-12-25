# bartoggle: turns on and off bossbar
#
# Called by: tick

execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.26 minecraft:ender_pearl unless items block ~ ~ ~ container.26 minecraft:ender_eye if score #barvisible variables matches 0 run bossbar set minecraft:progress players @a
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.26 minecraft:ender_pearl unless items block ~ ~ ~ container.26 minecraft:ender_eye if score #barvisible variables matches 1 run bossbar set minecraft:progress players
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.26 minecraft:ender_pearl unless items block ~ ~ ~ container.26 minecraft:ender_eye if score #barvisible variables matches 0 run scoreboard players set #barvisible variables 2
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.26 minecraft:ender_pearl unless items block ~ ~ ~ container.26 minecraft:ender_eye if score #barvisible variables matches 1 run scoreboard players set #barvisible variables 0
execute at @e[tag=worldbordermanager] unless items block ~ ~ ~ container.26 minecraft:ender_pearl unless items block ~ ~ ~ container.26 minecraft:ender_eye if score #barvisible variables matches 2 run scoreboard players set #barvisible variables 1