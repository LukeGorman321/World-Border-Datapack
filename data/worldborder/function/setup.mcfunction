# setup: Sets start world border settings and chest
# @s: worldbordermanager
# Runs on World Start

data modify entity @s block_state.Name set value "respawn_anchor"
data modify entity @s transformation.scale set value [1.1f,1.6f,1.1f]
data modify entity @s transformation.translation set value [-0.05f,-0.05f,-0.05f]
tag @s add worldbordermanager

worldborder center ~ ~
worldborder set 32

function worldborder:makeshulker

scoreboard objectives add variables dummy
scoreboard players set #border variables 16
scoreboard players set #progress variables 0
scoreboard players set #required variables 1088
scoreboard players set #fifth variables 217
scoreboard players set #twofifth variables 435
scoreboard players set #threefifth variables 652
scoreboard players set #fourfifth variables 870
scoreboard players set #multiplier variables 0
scoreboard players set #count variables 0
scoreboard players set #temp variables 0
scoreboard players set #stack variables 64
scoreboard players set #menu variables 1
scoreboard players set #barvisible variables 0
scoreboard players set #zero variables 0
scoreboard players set #one variables 1
scoreboard players set #two variables 2
scoreboard players set #three variables 3
scoreboard players set #four variables 4
scoreboard players set #five variables 5
scoreboard players set #newslot variables 0

bossbar add progress [{"text":"Progress: ","color":"green"},\
{"score":{"name":"#progress","objective":"variables","color":"green"}},\
{"text":"/","color":"green"},{"score":{"name":"#required","objective":"variables","color":"green"}}]
bossbar set progress color green	
execute store result bossbar minecraft:progress max run scoreboard players get #required variables

data modify storage blocks Blocks set value [\
{multiplier:1, i: 0, next:1, slot:1, name:"dirt"},\
{multiplier:2, i: 1, next:2, slot:1, name:"cobblestone"},\
{multiplier:3, i: 2, next:3, slot:1, name:"cobbled_deepslate"},\
{multiplier:2, i: 3, next:4, slot:1, name:"stone"},\
{multiplier:3, i: 4, next:5, slot:1, name:"deepslate"},\
{multiplier:1, i: 5, next:6, slot:1, name:"grass_block"},\
{multiplier:3, i: 6, next:7, slot:1, name:"oak_log"},\
{multiplier:3, i: 7, next:8, slot:1, name:"birch_log"},\
{multiplier:3, i: 8, next:9, slot:1, name:"spruce_log"},\
{multiplier:3, i: 9, next:10, slot:1, name:"acacia_log"},\
{multiplier:3, i: 10, next:11, slot:1, name:"jungle_log"},\
{multiplier:3, i: 11, next:0, slot:1, name:"dark_oak_log"},\
]