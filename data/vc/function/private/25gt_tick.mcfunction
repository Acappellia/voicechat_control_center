execute as @r[tag=to_mute] run function vc:private/all_mute_trigger
execute as @r[tag=to_unmute] run function vc:private/all_unmute_trigger

schedule function vc:private/25gt_tick 25t replace