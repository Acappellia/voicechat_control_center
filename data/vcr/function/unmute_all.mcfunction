## add wait for cb
execute if score #cb_wait vc matches 1.. run return -1
scoreboard players set #cb_wait vc 1

## run command
setblock 0 -63 0 command_block{Command:"lp group default parent set g_voice_unmute",auto:true}
tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "已强制取消静音所有玩家","color": "gold"}]
schedule function vc:private/clear_blocks 2t