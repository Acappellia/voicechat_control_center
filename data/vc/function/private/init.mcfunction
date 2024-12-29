forceload add 0 0 0 0
scoreboard objectives add vc dummy
execute unless score #default_mute vc matches 0.. run scoreboard players set #default_mute vc 1
execute unless score #rejoin_mute vc matches 0.. run scoreboard players set #rejoin_mute vc 1

scoreboard objectives add vc_controller_cd custom:time_since_death
scoreboard objectives add vc_logout custom:leave_game

schedule function vc:private/4gt_tick 4t append