tag @a[tag=vc_mute] add to_unmute

tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "正在解除静音所有玩家……","color": "green"}]
tag @s add batch_operator

schedule function vc:private/batch_complete 6t replace