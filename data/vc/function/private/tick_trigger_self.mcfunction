## show title
execute if entity @s[tag=vc_mute,distance=..50] run title @s actionbar [{"selector": "@s","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙","color": "white","bold": true},{"text": "×","color": "red","bold": false}]
execute if entity @s[tag=vc_unmute,distance=..50] run title @s actionbar [{"selector": "@s","bold": true},{"text": " | ","color": "gray","bold": false},{"text": "🎙","color": "white","bold": true},{"text": "√","color": "green","bold": false}]