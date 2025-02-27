advancement revoke @s only vc:controller_trigger

## check cd
execute if score @s vc_controller_cd matches ..0 run return -1
scoreboard players set @s vc_controller_cd -15

execute if score #global_mute vc matches 0 run return run title @s actionbar [{"text": " 全局开麦中 ","color": "gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "√","color": "green","bold": false}]
execute if score #global_mute vc matches 1 run return run title @s actionbar [{"text": " 全局闭麦中 ","color": "dark_gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "×","color": "red","bold": false}]

execute if predicate vc:sneaking run function vc:private/controller_trigger_self
execute unless predicate vc:sneaking run function vc:private/controller_trigger_target