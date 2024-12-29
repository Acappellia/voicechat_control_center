tag @a remove to_mute
tag @a remove to_unmute

tag @a[tag=to_mute_hist] add to_unmute
tag @a[tag=to_ummute_hist] add to_mute

tag @a remove to_mute_hist
tag @a remove to_ummute_hist

tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "正在撤销上一次集体操作的更改……","color": "aqua"}]
tag @s add batch_operator

schedule function vc:private/batch_complete 15t replace