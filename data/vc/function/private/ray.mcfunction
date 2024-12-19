tag @p[tag=!vc_controller,distance=..2] add vc_controller_target
execute if entity @s[distance=..30] unless entity @p[tag=!vc_controller_target,distance=..30] run function vc:private/tick_ray/ray