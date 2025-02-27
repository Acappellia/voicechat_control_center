advancement revoke @s only vc:controller_trigger

## check cd
execute if score @s vc_controller_cd matches ..0 run return -1
scoreboard players set @s vc_controller_cd -15

execute if predicate vc:sneaking run function vc:private/controller_trigger_self
execute unless predicate vc:sneaking run function vc:private/controller_trigger_target