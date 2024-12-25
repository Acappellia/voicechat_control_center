tag @a[tag=vc_unmute] add to_mute

tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "正在静音所有玩家……","color": "gold"}]
tag @s add batch_operator

schedule function vc:private/batch_complete 6t replace