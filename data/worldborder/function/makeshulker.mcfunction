# makeshulker: Places shulker box
# @s: worldbordermanager
# Called by shulkersetup and setup

setblock ~ ~ ~ barrel
data modify block ~ ~ ~ CustomName set value '{"text":"Deposit Items", "color":"black","bold":true}'
data modify block ~ ~ ~ components set value {"minecraft:lore":['{"text":""}']}