## find target
tag @s add vc_controller
function vc:private/ray
tag @s remove vc_controller

## show title
execute unless entity @p[tag=vc_controller_target,distance=..50] if score #global_mute vc matches 0 run title @s actionbar [{"text": " 全局开麦中 ","color": "gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "√","color": "green","bold": false}]
execute unless entity @p[tag=vc_controller_target,distance=..50] if score #global_mute vc matches 1 run title @s actionbar [{"text": " 全局闭麦中 ","color": "dark_gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "×","color": "red","bold": false}]


execute if entity @p[tag=vc_controller_target,tag=vc_mute,distance=..50] run title @s actionbar [{"selector": "@p[tag=vc_controller_target,tag=vc_mute,distance=..50]","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "-","color": "gray","bold": false}]
execute if entity @p[tag=vc_controller_target,tag=vc_unmute,distance=..50] run title @s actionbar [{"selector": "@p[tag=vc_controller_target,tag=vc_unmute,distance=..50]","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "√","color": "green","bold": false}]
tag @a remove vc_controller_target