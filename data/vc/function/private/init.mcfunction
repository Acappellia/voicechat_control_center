forceload add 0 0 0 0
scoreboard objectives add vc dummy
scoreboard players set #default_mute vc 1

scoreboard objectives add vc_controller_cd custom:time_since_death

schedule function vc:private/4gt_tick 4t append