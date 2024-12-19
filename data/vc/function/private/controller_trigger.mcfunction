advancement revoke @s only vc:controller_trigger

## check cd
execute if score @s vc_controller_cd matches ..0 run return -1
scoreboard players set @s vc_controller_cd -5

## ray
tag @s add vc_controller
function vc:private/ray
tag @s remove vc_controller

## effect
execute as @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run function vc:private/unmute_trigger
execute as @p[tag=vc_controller_target,tag=vc_unmute,distance=..50] run function vc:private/mute_trigger

## playsound
execute if entity @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run playsound block.copper_bulb.turn_off player @s ~ ~ ~ 1 1
execute if entity @p[tag=vc_controller_target,tag=vc_unmute,distance=..50] run playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1

## show title
title @s times 0 5 2
execute if entity @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run title @s subtitle [{"selector": "@p[tag=vc_controller_target,tag=vc_mute,distance=..50]"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "×","color": "red"}]
execute if entity @p[tag=vc_controller_target,tag=vc_unmute,distance=..50] run title @s subtitle [{"selector": "@p[tag=vc_controller_target,tag=vc_unmute,distance=..50]"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "√","color": "green"}]
tag @a remove vc_controller_target