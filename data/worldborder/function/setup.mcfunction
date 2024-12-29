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

bossbar add progress [{"text":"Radius: ","color":"green"},\
{"score":{"name":"#border","objective":"variables","color":"green"}},\
{"text":" Progress: ","color":"green"},\
{"score":{"name":"#progress","objective":"variables","color":"green"}},\
{"text":"/","color":"green"},{"score":{"name":"#required","objective":"variables","color":"green"}}]
bossbar set progress color green	
execute store result bossbar minecraft:progress max run scoreboard players get #required variables

data modify storage blocks Blocks set value [\
{multiplier:1, i: 0, next:1, slot:1, name:"dirt"},\
{multiplier:2, i: 1, next:2, slot:1, name:"cobblestone"},\
{multiplier:4, i: 2, next:3, slot:1, name:"cobbled_deepslate"},\
{multiplier:2, i: 3, next:4, slot:1, name:"stone"},\
{multiplier:4, i: 4, next:5, slot:1, name:"deepslate"},\
{multiplier:1, i: 5, next:6, slot:1, name:"grass_block"},\
{multiplier:3, i: 6, next:7, slot:1, name:"oak_log"},\
{multiplier:3, i: 7, next:8, slot:1, name:"birch_log"},\
{multiplier:3, i: 8, next:9, slot:1, name:"spruce_log"},\
{multiplier:3, i: 9, next:10, slot:1, name:"acacia_log"},\
{multiplier:3, i: 10, next:11, slot:1, name:"jungle_log"},\
{multiplier:3, i: 11, next:12, slot:1, name:"dark_oak_log"},\
{multiplier:1, i: 12, next:13, slot:1, name:"wheat_seeds"},\
{multiplier:2, i: 13, next:14, slot:1, name:"sugar_cane"},\
{multiplier:4, i: 14, next:15, slot:1, name:"oak_sapling"},\
{multiplier:4, i: 15, next:16, slot:1, name:"birch_sapling"},\
{multiplier:4, i: 16, next:17, slot:1, name:"spruce_sapling"},\
{multiplier:2, i: 17, next:18, slot:1, name:"andesite"},\
{multiplier:2, i: 18, next:19, slot:1, name:"diorite"},\
{multiplier:2, i: 19, next:20, slot:1, name:"granite"},\
{multiplier:2, i: 20, next:21, slot:1, name:"tuff"},\
{multiplier:1, i: 21, next:22, slot:1, name:"netherrack"},\
{multiplier:1, i: 22, next:23, slot:1, name:"soul_sand"},\
{multiplier:1, i: 23, next:24, slot:1, name:"soul_soil"},\
{multiplier:2, i: 24, next:25, slot:1, name:"nether_bricks"},\
{multiplier:1, i: 25, next:26, slot:1, name:"gravel"},\
{multiplier:1, i: 26, next:27, slot:1, name:"iron_nugget"},\
{multiplier:9, i: 27, next:28, slot:1, name:"iron_ingot"},\
{multiplier:81, i: 28, next:29, slot:1, name:"iron_block"},\
{multiplier:3, i: 29, next:30, slot:1, name:"bone"},\
{multiplier:1, i: 30, next:31, slot:1, name:"bone_meal"},\
{multiplier:9, i: 31, next:32, slot:1, name:"bone_block"},\
{multiplier:1, i: 32, next:33, slot:1, name:"gunpowder"},\
{multiplier:1, i: 33, next:34, slot:1, name:"rotten_flesh"},\
{multiplier:1, i: 34, next:35, slot:1, name:"carrot"},\
{multiplier:1, i: 35, next:36, slot:1, name:"potato"},\
{multiplier:1, i: 36, next:37, slot:1, name:"arrow"},\
{multiplier:1, i: 37, next:38, slot:1, name:"wheat"},\
{multiplier:1, i: 38, next:39, slot:1, name:"sugar"},\
{multiplier:1, i: 39, next:0, slot:1, name:"poppy"},\
]