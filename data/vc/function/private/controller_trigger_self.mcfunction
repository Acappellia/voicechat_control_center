## effect
execute as @s[tag=vc_mute] run function vc:private/unmute_trigger
execute as @s[tag=vc_unmute] run function vc:private/mute_trigger

## playsound
execute if entity @s[tag=vc_mute] run playsound block.copper_bulb.turn_off player @s ~ ~ ~ 1 1
execute if entity @s[tag=vc_unmute] run playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1

## show title
title @s clear
title @s times 0 5 2
execute if entity @s[tag=vc_mute,distance=..50] run title @s subtitle [{"selector": "@s"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "×","color": "red"}]
execute if entity @s[tag=vc_unmute,distance=..50] run title @s subtitle [{"selector": "@s"},{"text": " | ","color": "gray"},{"text": "🎙","color": "white"},{"text": "√","color": "green"}]
title @s title " "