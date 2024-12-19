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
execute if entity @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run title @s actionbar [{"selector": "@p[tag=vc_controller_target,tag=vc_mute,distance=..50]","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙","color": "white","bold": true},{"text": "×","color": "red","bold": false}]
execute if entity @p[tag=vc_controller_target,tag=vc_unmute,distance=..50] run title @s actionbar [{"selector": "@p[tag=vc_controller_target,tag=vc_unmute,distance=..50]","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙","color": "white","bold": true},{"text": "√","color": "green","bold": false}]
tag @a remove vc_controller_target