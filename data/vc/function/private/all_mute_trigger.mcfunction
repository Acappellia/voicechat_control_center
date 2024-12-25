function vc:private/mute_trigger

tag @s remove to_mute
tag @s add to_mute_hist

schedule function vc:private/batch_complete 6t replace