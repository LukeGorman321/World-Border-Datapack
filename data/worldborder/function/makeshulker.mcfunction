# makeshulker: Places shulker box
# @s: worldbordermanager
# Called by shulkersetup and setup

setblock ~ ~ ~ black_shulker_box
data modify block ~ ~ ~ CustomName set value '{"text":"Deposit Items", "color":"black","bold":true}'
data modify block ~ ~ ~ components set value {"minecraft:lore":['{"text":""}']}
scoreboard players set @s menu 2