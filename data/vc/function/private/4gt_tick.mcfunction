execute as @a if predicate vc:hold_tool at @s positioned ^ ^ ^1 run function vc:private/tick_trigger

execute as @r[tag=!vc_mute,tag=!vc_unmute] if score #default_mute vc matches 1 run function vc:private/mute_trigger
execute as @r[tag=!vc_mute,tag=!vc_unmute] unless score #default_mute vc matches 1 run function vc:private/unmute_trigger

schedule function vc:private/4gt_tick 4t replace