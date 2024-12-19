## find target
tag @s add vc_controller
function vc:private/ray
tag @s remove vc_controller

## show title
title @s times 0 5 2
execute if entity @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run title @s subtitle [{"selector": "@p[tag=vc_controller_target,tag=vc_mute,distance=..50]"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "×","color": "red"}]
execute if entity @p[tag=vc_controller_target,tag=!vc_mute,distance=..50] run title @s subtitle [{"selector": "@p[tag=vc_controller_target,tag=!vc_mute,distance=..50]"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "√","color": "green"}]
title @s title ""
tag @a remove vc_controller_target