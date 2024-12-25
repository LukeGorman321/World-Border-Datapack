# load: Schedules init function if world not initialized
#
# Runs on World Start

execute unless entity @e[type=minecraft:block_display, nbt={block_state:{Name:"minecraft:respawn_anchor"}, Tags:["worldbordermanager"]}] run schedule function worldborder:init 1t

schedule function worldborder:noise 3s append