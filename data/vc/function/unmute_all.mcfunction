tag @a remove to_mute
tag @a remove to_mute_hist
tag @a remove to_unmute
tag @a remove to_ummute_hist

tag @a[tag=vc_mute] add to_unmute

tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "正在解除静音所有玩家……","color": "green"}]
tag @s add batch_operator

schedule function vc:private/batch_complete 30t replace