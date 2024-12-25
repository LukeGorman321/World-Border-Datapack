# expand: expand world border and resets variables
# 
# Called by: checkforitems

worldborder add 2 2
scoreboard players operation #progress variables -= #required variables
scoreboard players operation #required variables += #stack variables
scoreboard players add #border variables 1
execute store result bossbar minecraft:progress max run scoreboard players get #required variables
tellraw @a {"text":"World Border Expanding!", "color":"green","bold":true}
tellraw @a [{"text":"The world's radius is now ", "color":"green"},{"score":{"name":"#border","objective":"variables","color":"green"}},{"text":" blocks wide!","color":"green"}]

execute as @a at @s run playsound minecraft:block.beacon.power_select block @s ~ ~ ~

scoreboard players operation #fifth variables = #required variables
scoreboard players operation #twofifth variables = #required variables
scoreboard players operation #threefifth variables = #required variables
scoreboard players operation #fourfifth variables = #required variables

scoreboard players operation #fifth variables /= #five variables
scoreboard players operation #twofifth variables /= #five variables
scoreboard players operation #threefifth variables /= #five variables
scoreboard players operation #fourfifth variables /= #five variables

scoreboard players operation #twofifth variables *= #two variables
scoreboard players operation #threefifth variables *= #three variables
scoreboard players operation #fourfifth variables *= #four variables