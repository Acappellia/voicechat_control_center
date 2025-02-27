execute as @a if predicate vc:hold_tool run function vc:private/hold_tick

execute as @r[tag=!vc_mute,tag=!vc_unmute] if score #default_mute vc matches 1 run function vc:private/mute_trigger
execute as @r[tag=!vc_mute,tag=!vc_unmute] unless score #default_mute vc matches 1 run function vc:private/unmute_trigger
execute as @r[scores={vc_logout=1..}] run function vc:private/player_rejoin

schedule function vc:private/4gt_tick 4t replace