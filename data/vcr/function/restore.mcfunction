## add wait for cb
execute if score #cb_wait vc matches 1.. run return -1
scoreboard players set #cb_wait vc 1

scoreboard players reset #global_mute vc

## run command
setblock 0 -63 0 command_block{Command:"lp group default permission unset voicechat.speak",auto:true}
tellraw @s [{"text": "[voicechat] ","color": "#a5ffcf"},{"text": "已恢复为各玩家独立控制语音","color": "gold"}]
schedule function vc:private/clear_blocks 2t