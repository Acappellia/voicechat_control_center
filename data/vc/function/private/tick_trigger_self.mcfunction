## show title
title @s clear
title @s times 0 5 2
execute if entity @s[tag=vc_mute,distance=..50] run title @s subtitle [{"selector": "@s"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "×","color": "red"}]
execute if entity @s[tag=vc_unmute,distance=..50] run title @s subtitle [{"selector": "@s"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "√","color": "green"}]
title @s title " "