execute if score #global_mute vc matches 0 run return run title @s actionbar [{"text": " 全局开麦中 ","color": "gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "√","color": "green","bold": false}]
execute if score #global_mute vc matches 1 run return run title @s actionbar [{"text": " 全局闭麦中 ","color": "dark_gray","bold": false},{"text": "🎙 ","color": "white","bold": true},{"text": "×","color": "red","bold": false}]

execute unless predicate vc:sneaking at @s positioned ^ ^ ^1 run function vc:private/tick_trigger
execute if predicate vc:sneaking run function vc:private/tick_trigger_self