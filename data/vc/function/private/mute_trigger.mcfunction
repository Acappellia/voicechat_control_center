## add wait for cb
execute if score #cb_wait vc matches 1.. run return -1
scoreboard players set #cb_wait vc 1

## get player name
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"player_head",count:1}]}
item modify block 0 -64 0 container.0 vc:set_skull
data modify storage vc:tmp player.name set from block 0 -64 0 Items[0].components."minecraft:profile".name

## run command
tag @s add vc_mute
function vc:private/mute_runcommand with storage vc:tmp player
schedule function vc:private/clear_blocks 2t