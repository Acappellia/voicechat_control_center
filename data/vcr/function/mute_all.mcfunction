## add wait for cb
execute if score #cb_wait vc matches 1.. run return -1
scoreboard players set #cb_wait vc 1

scoreboard players set #global_mute vc 1

## run command
setblock 0 -63 0 command_block{Command:"lp group u_voice_mute permission set voicechat.speak false",auto:true}
setblock 0 -62 0 command_block{Command:"lp group u_voice_unmute permission set voicechat.speak false",auto:true}
tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "已全局静音所有玩家","color": "gold"}]
schedule function vc:private/clear_blocks 2t