## get player name
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"player_head",count:1}]}
item modify block 0 -64 0 container.0 vc:set_skull
data modify storage vc:tmp player.name set from block 0 -64 0 profile.name

## run command
tag @s add vc_mute
function vc:private/mute_runcommand with storage vc:tmp player
fill 0 -64 0 0 -63 0 bedrock